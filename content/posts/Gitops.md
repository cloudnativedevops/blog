---
title: "What is GitOps?"
date: 2020-07-05T12:00:00Z
description: "It began with shell scripts, Makefiles, Dockerfiles, Jenkinsfiles, building reusable images with Packer, infrastructure-as-code tools like Terraform, and configuration management tools such as Ansible, Puppet, and Chef. Now GitOps brings some new tools for managing containerized applications in Kubernetes clusters."
---

Once you've wrapped your head around the basic concepts of Kubernetes, the next question that often comes to mind is “So how can I deploy my services onto this thing?” That means we need to talk about Continuous Integration/Continuous Deployment/Delivery (CI/CD) pipelines.

Kubernetes itself is a great platform for running reliable services, but it also comes with a growing ecosystem of tools for managing deployments that can help improve the workflows of both software developers and cluster operators.

Software engineers have certainly been running and deploying software long before Kubernetes, Docker, and cloud platforms ever existed. So what's different about the cloud native world? 

“GitOps” is the latest newcomer to the conversation about how to manage changes to applications over time. Ian Miell is working on an upcoming book specifically about GitOps and made this helpful diagram called [“The GitOps Family Tree”](https://twitter.com/ianmiell/status/1278330015529254912).

Using Ian’s Tree we see that GitOps is a continuation of the story that started out with shell scripts, Makefiles, Dockerfiles, Jenkinsfiles, building reusable images with Packer, infrastructure-as-code tools like Terraform, and configuration management tools such as Ansible, Puppet, and Chef. GitOps brings some new tools to this ecosystem for managing containerized applications in Kubernetes clusters.

Weaveworks (the hardworking folks behind [Flux](https://github.com/fluxcd/flux) and [eksctl](https://github.com/weaveworks/eksctl)) have been talking about GitOps for some time now, and have a useful explanation of the term [here](https://www.weave.works/technologies/gitops/). 

The idea is to manage applications declaratively (something that should sound familiar when talking about Kubernetes manifests) and automatically applying changes using code that is stored in a central repository (`git` being one of the more popular source control tools in use these days).

Imagine having a central git repository that contains all of your Kubernetes manifests, both for your own applications, along with any supporting services you need to install, such as [prometheus](https://prometheus.io/) for metrics, [fluentd](https://www.fluentd.org/) for logs, or [cert-manager](https://github.com/jetstack/cert-manager) for managing TLS certificates. This gives you a single place to look to see who deployed what and when, all tracked in the git commit history.

Adding a new application to your clusters can be as simple as opening a PR to this central “configuration repo” containing the Kubernetes manifests or Helm charts for your new service. Once that PR is approved by your team and merged, a GitOps tool (like Flux or [Argo](https://argoproj.github.io/argo-cd/)) can automatically apply that change from within the cluster.

This is the same kind of workflow that many people use with traditional servers and configuration management tools like Puppet, Chef, Salt, or Ansible. The configuration of every server is declaratively managed by code in a Git repo, and whatever is merged to that repo is automatically rolled out across the whole infrastructure. This is GitOps, and tools like Flux simply extend this pattern to include Kubernetes.

Another popular workflow that GitOps tools can provide is to automatically deploy upgrades when a new container image is pushed to your container image registry. Imagine a testing cluster where your GitOps tool could automatically deploy new container images of your app as soon as they are built and published to the registry, rather than doing a separate deployment step to promote the new image. The GitOps tool would automatically make a commit back to the central configuration repo when the deploy is finished setting the newly applied container tag.

A common problem with Kubernetes is how to recreate the 'state of the cluster'. It's not that you actually often _need_ to rebuild a cluster from scratch, but the point is that in a declarative infrastructure there should be an automatable _way_ to do that. Otherwise, recovering from disasters is a complex and error-prone manual process which may rely on information you no longer have available.

The centralized config repo and the GitOps tooling offers a way to deal with that. Simply install your GitOps tool, point it at your repo, and it will automatically reinstall everything using the last deployed versions, bringing the cluster back to a state where it's ready for production. It's rare to be able to make this _entirely_ automated, because there is usually also some data in the system, such as your user database, or uploaded assets, for example. But using the GitOps discipline certainly helps with everything that _can_ be managed declaratively, leaving you more time to deal with the stuff that needs human intervention.

To learn more and get started with GitOps we recommend checking out Flux and Argo.  These are separate (but similar) GitOps tools for now with slight differences in functionality, but in November of 2019, the two teams [announced](https://www.weave.works/blog/argo-flux-join-forces) that they are going to collaborate on a single shared tool that will be called the [GitOps Engine](https://github.com/argoproj/gitops-engine). 

For now, try installing either Flux or Argo (or both if you are feeling up for it!) and get a feel for how they work. You can find the Getting Started docs for Flux [here](https://docs.fluxcd.io/en/1.18.0/tutorials/get-started.html) and for Argo [here](https://argoproj.github.io/argo/quick-start/).
