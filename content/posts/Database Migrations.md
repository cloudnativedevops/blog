---
title: "Database Migrations in Kubernetes"
date: 2018-12-13T12:00:00Z
aliases:
    - /posts/2018-12-13-database-migrations/
---

Applications with databases usually need to run migration tasks as part of their deployment processes. For example, in a Rails application this is done with the `rake db:migrate` command. Other frameworks have similar commands to manage the migrations.  Typically, running migrations is one of the first steps in a deploy when upgrading the application to a new version. In a CI/CD pipeline for deploying an application running in Kubernetes there are a couple of options for how to handle migrations. In this post we’ll discuss two of them:

- Running migrations from your CI/CD tool
- Using a Kubernetes Job

### CI/CD

This option involves adding a step to your CI/CD pipeline to run the migrations as part of a deploy. A common CI/CD workflow in Kubernetes looks something like this:

1. Push code to source control
2. Build a container with the new code
3. Run the test suite
4. Publish the container to a container registry
5. Deploy the new container to a Kubernetes cluster with `kubectl apply…` or `helm upgrade…`

This last step is where the migration needs to happen. Jenkins, Drone, GitLab CI, or whatever CI/CD tool you use could migrate the database before setting a new version of your application to run. For example, you could add a step in the pipeline to run something like `docker run <your-app-container>:<your-newly-built-container-tag> <your-db-migrate-command>...`.

The advantage to this method is that if the migration fails, the whole deployment fails and you can see right away that the deploy did not completely succeed. However, in order for this to be possible, your CI/CD tooling needs access to your application’s database, along with the application’s database credentials. This may not be possible if your CI/CD pipeline tools run in an isolated or separate environment from your application. For example, if you are using a SaaS CI/CD tool, network access to your application's database may not be an option.
<!--more-->

### Kubernetes Job

An alternative is to use a Kubernetes [Job](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/) inside of your cluster to run the migration. The application will already have access to the database and the credentials are already passed to the application, presumably using [Secrets](https://kubernetes.io/docs/concepts/configuration/secret/) and [ConfigMaps](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/). The Job will run the new version of the application container image containing any new migrations that need to be run.

In order to ensure that your migration runs before updating a Deployment to run a new container image, you can use [Helm](https://www.helm.sh/) and [hooks](https://github.com/helm/helm/blob/master/docs/charts_hooks.md) to control the order of the deploy steps. Here is an example of a database migration Job for a Rails application deployed with Helm:

```YAML
apiVersion: batch/v1
kind: Job
metadata:
  name: db-migrate
  annotations:
    "helm.sh/hook": pre-install,pre-upgrade
    "helm.sh/hook-delete-policy": hook-succeeded
spec:
  activeDeadlineSeconds: 60
  template:
      name: db-migrate
    spec: restartPolicy: Never
    containers:
      - name: db-migrate
        image: {{ .Values.image.repository }}:{{ .Values.image.tag }}
        command:
          - bundle
          - exec
          - rails
          - db:migrate
```

Note the `annotations` section above. This tells Helm to run the Job before the upgrade/install phases, and to automatically clean up the Job if it succeeds. If the migration fails, then the deployment will exit, the old version of your application will still be running, and the Job will be left in a failed state.

You can see the failed job with `kubectl get pods -a` and troubleshoot why the migration may have failed. Once the issue is resolved, remove the failed job with `kubectl delete job <your-job-name>` - otherwise future deploys will fail and tell you that it cannot proceed because a job named <your-job-name> already exists.

Using a Job means you do not need to worry about giving database access to your CI/CI pipeline tools, however, it means that you will additionally need to monitor for any failed jobs in order to be notified if a migration fails during a deploy. One helpful tool for that is to use [kube-state-metrics](https://github.com/kubernetes/kube-state-metrics) to check for any failed jobs in your cluster. We won't cover the specifics of that here, but perhaps in a future post we'll go over using kube-state-metrics and other tools to monitor in Kubernetes.

Thanks for reading, and let us know if you have any questions, comments, or if you have other ideas for how to handle database migrations in Kubernetes.
