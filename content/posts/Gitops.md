---
title: "What is GitOps?"
date: 2020-07-05T12:00:00Z
description: "It began with shell scripts, Makefiles, Dockerfiles, Jenkinsfiles, building reusable images with Packer, infrastructure-as-code tools like Terraform, and configuration management tools such as Ansible, Puppet, and Chef. Now GitOps brings some new tools for managing containerized applications in Kubernetes clusters."
---

It is difficult to talk about Kubernetes without also talking about Continuous Integration/Continuous Deployment/Delivery (CI/CD) pipelines. Once the overall concepts of Kubernetes sink in, the next question that often comes to mind is “So how can I deploy my services onto this thing?” And “Is this going to be better than my current CI/CD setup?” 

Not only is Kuberentes a good system for keeping services running, it comes with a growing ecosystem of tools for managing deployments and can help improve the workflows of both software developers and cluster operators.

As with almost everything, it is useful to look to the past to understand the present. Software engineers have certainly been running and deploying software long before Kubernetes, Docker, and cloud platforms ever existed. So what is new in a cloud-native world? 

“GitOps” is a new term that comes up often when talking about application deployment in Kubernetes and is the latest newcomer to the conversation about how to manage changes to applications over time. Ian Miell is working on an upcoming book specifically about GitOps and made this helpful diagram called [“The GitOps Family Tree”](https://twitter.com/ianmiell/status/1278330015529254912).

Using Ian’s Tree we see that GitOps is a continuation of the story that started out with shell scripts, Makefiles, Dockerfiles, Jenkinsfiles, building reusable images with Packer, infrastructure-as-code tools like Terraform, and configuration management tools such as Ansible, Puppet, and Chef. GitOps brings some new tools to this ecosystem for managing containerized applications in Kubernetes clusters.

Weaveworks (the hardworking folks behind [Flux](https://github.com/fluxcd/flux) and [eksctl](https://github.com/weaveworks/eksctl)) have been talking about GitOps for some time now, and have a useful explanation of the term [here](https://www.weave.works/technologies/gitops/). 

The idea is to manage applications declaratively (something that should sound familiar when talking about Kubernetes manifests) and automatically applying changes using code that is stored in a central repository (`git` being one of the more popular source control tools in use these days).

Imagine having a central git repository that contains all of your Kubernetes manifests, both for your own applications, along with any supporting services you need to install, such as [prometheus](https://prometheus.io/) for metrics, [fluentd](https://www.fluentd.org/) for logs, or [cert-manager](https://github.com/jetstack/cert-manager) for managing TLS certificates. This gives you a single place to look to see who deployed what and when, all tracked in the git commit history.

Adding a new application to your clusters could be as simple as opening a pull-request to this central “configuration repo” with your Kubernetes manifests or Helm Charts for your new service. Once that PR is approved by your team and merged, a GitOps tool (like Flux or [Argo](https://argoproj.github.io/argo-cd/) could automatically apply that change from within the cluster.

If this sounds similar to a Puppet or Chef agent automatically installing a package across your fleet of Linux VMs when you push the change into your config repo, then you can see how the past is very much a part of the present.

Another popular workflow that GitOps tools can provide is to automatically deploy upgrades when a new container image is pushed to your container image registry. Imagine a testing cluster where your GitOps tool could automatically deploy new container images of your app as soon as they are built and published to the registry, rather than having a developer do a separate deployment to promote the new image. The GitOps tool would automatically make a commit back to the central configuration repo when the deploy is finished setting the newly applied container tag.

If you needed to rebuild your entire Kubernetes cluster from scratch now you have everything you need in a single repo to recreate everything. Simply install your GitOps tool, point it at your central configuration repo, and it will automatically reinstall everything using the last deployed versions.

GitOps continues the idea of automating deployments, and defining your infrastructure in code. Using a central configuration repository gives you a source of truth for all of your applications and allows for teams to collaborate and coordinate changes.

To learn more and get started with GitOps we recommend checking out Flux and Argo.  These are separate (but similar) GitOps tools for now with slight differences in functionality, but in November of 2019, the two teams [announced](https://www.weave.works/blog/argo-flux-join-forces) that they are going to collaborate on a single shared tool that will be called the [GitOps Engine](https://github.com/argoproj/gitops-engine). 

For now, try installing either Flux or Argo (or both if you are feeling up for it!) and get a feel for how they work. You can find the Getting Started docs for Flux [here](https://docs.fluxcd.io/en/1.18.0/tutorials/get-started.html) and for Argo [here](https://argoproj.github.io/argo/quick-start/).
