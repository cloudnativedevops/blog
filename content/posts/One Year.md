---
title: "Surveying the cloudscape: what’s new, Kubernetes?"
date: 2020-04-02T12:00:00Z
description: "It’s hard to believe, but [‘Cloud Native DevOps with Kubernetes’ has been out for nearly a year] (https://cloudnativedevopsblog.com/posts/the-big-day-is-here/)! While much has changed in the Kubernetes landscape, a lot is also the same. In this post we’ll cover some of the things that have changed (and what hasn’t)."
---
It’s hard to believe, but [‘Cloud Native DevOps with Kubernetes’ has been out for nearly a year] (https://cloudnativedevopsblog.com/posts/the-big-day-is-here/)! While much has changed in the Kubernetes landscape, a lot is also the same. In this post we’ll cover some of the things that have changed (and what hasn’t).

<!--more-->

# What has changed

## Kubernetes - but not by much
The community of maintainers for Kubernetes continue to roll out impressive and regular releases of versions of Kubernetes every few months. [Version 1.17](https://kubernetes.io/blog/2019/12/09/kubernetes-1-17-release-announcement/) was released at the beginning of 2020 and [1.18](https://kubernetes.io/blog/2020/03/25/kubernetes-1-18-release-announcement/) should come out late April . While the core functionality of Kubernetes has mostly stayed the same over time (see more on this below), the API versions are stabilizing and generally the focus of recent releases has been around making things more reliable, extendable, and secure, rather than introducing new brand-new concepts to container orchestration.

### API version bumps

As new APIs are introduced in Kubernetes, they start their life as ‘beta’, and eventually graduate to being all grown up. Many of the [examples](https://github.com/cloudnativedevops/demo) in our book used the `v1beta1` API version for things like [Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) and now for the most part those have been promoted to `apps/v1` in recent versions of Kubernetes. Thanks to folks who have opened issues on our demo GitHub repository to point out where versions have changed since the first edition of the book. We track those types of changes [here](https://github.com/cloudnativedevops/demo#known-issues) in the example GitHub repo. Let us know if you find any breaking changes and we’ll do our best to keep the live version of the examples working and up to date.

## Helm 3: Helm Deeper

One of the tools we mention frequently throughout the book is [Helm](https://helm.sh/). In November of 2019 the Helm team released a huge upgrade for the tool, version 3. The biggest change between version 2 and 3 is the removal of the component called `tiller`, which ran inside the Kubernetes cluster to manage tracking application releases, often with administrative privileges.

Helm 3 removes tiller and instead relies on the user’s RBAC permissions when running `helm` commands. This eliminates the need to run a super-user level process in the cluster, and means that Helm will only be allowed to make changes using the existing permissions of the client.

The community has also built a very handy plugin that makes upgrading from version 2 to 3 very straightforward. Installing Helm on new clusters is also now even easier, as the additional steps of first setting up `tiller` and a service account with cluster administrative permissions is no longer required. The [Helm install docs](https://helm.sh/docs/intro/install/) are the best place to start for installing helm, and docs for migrating from Helm 2 to Helm 3 are [here](https://helm.sh/docs/topics/v2_v3_migration/). There are notes on other various changes in Helm 3 [here](https://v3.helm.sh/docs/faq/#changes-since-helm-2).


## Go update yourself

Most of the examples in the book use Go version 1.11, which was current at publication time. The Go team release major version updates about every six months or so, and version 1 .14 came out in February 2020 We have updated the examples in our [demo repo](https://github.com/cloudnativedevops/demo) to include the latest version. Since our demo application is very simple it’s unlikely that we’ll see any breaking changes with the demo Go application, but just like with any of the Kubernetes examples, please let us know in the [GitHub Issues](https://github.com/cloudnativedevops/demo/issues) if you have any problems.

## Ksonnet no longer a thing

In the book we mention Ksonnet, an alternative configuration tool to helm and [kustomize](https://github.com/kubernetes-sigs/kustomize). Since last year the ksonnet repo has been archived and the maintainers decided to step back from the project to pursue other work.

Earlier this year the folks at Grafana Labs [announced](https://grafana.com/blog/2020/01/09/introducing-tanka-our-way-of-deploying-to-kubernetes/) that they were releasing a similar tool known as tanka, and is considered to be a replacement for ksonnet. You can find out more about tanka at [their website](https://tanka.dev/).

These sorts of changes are common in an ecosystem that grows as quickly as Kubernetes tooling. Individual tools will come and go in the landscape as the people building the tools find new challenges to tackle and other projects to pursue. The community will shift focus to different strategies and approaches to making Kubernetes a secure and approachable platform for running containers. We’ll do our best to keep you up to date with current practice via this blog, and in future editions of the book.

# What has NOT changed

## Less Kubernetes, more ecosystem

Even though it seems like something in the tooling landscape changes every week, the core functionality of Kubernetes itself is more or less the same as the early releases.

Kubernetes is still the operating system for containers. Pods are still the base unit of a running container. Deployments keep a desired number of pods running. Namespaces are useful for separating workloads. ConfigMaps and Secrets keep configuration decoupled from the application. Services and Ingress are used for routing network traffic to Pods.

All of the foundational pieces required for running a cloud native application remain the same in Kubernetes. And that’s a good thing. Kubernetes _should_ be boring, because it allows us to focus on solving more interesting problems, rather than coming up with new ways to run processes.

On a recent community call with the folks at [Pixie Labs](https://pixielabs.ai/) Kelsey Hightower talked about how the core Kubernetes feature set is mostly complete at this point. Now the community is focusing on filling out the supporting functionality with different types of tools.

He explains that just as the Linux operating system became stable years ago, tools like NGINX, collectd, fluentd, (and eventually containers) came along to extend it, making it more useful and interesting to people. Kubernetes is still early on in this process and while the core is now pretty stable and boring, the ecosystem hasn’t yet settled and consolidated.. Check out Kelsey’s take here at the tail end of the video:
https://youtu.be/S-YKeK-eOnk?t=2730

Pixie Labs is one team that is building new functionality on top of Kubernetes. They are building tools to monitor workloads running in a Kubernetes cluster, and they aren’t the only ones working to make monitoring and observability for containers easier. 

When we set out to write ‘Cloud Native DevOps with Kubernetes’, we were less interested in explaining the internal architecture of the product, and more interested in explaining what you can do with it, and how to use it to solve real-world problems. This is now also the focus of many developers working on Kubernetes tools.

Over the next year we expect the Kubernetes tooling space will continue to grow and change. New tools will be developed to make building, configuring, and monitoring Kubernetes clusters easier for different types of users. However, the core ideas around running containers are likely going to remain the same as they were a year or two ago. 

More people are adopting Kubernetes, more cloud providers are growing their offerings for running compute workloads on Kubernetes, and this means that its core functionality will _need_ to remain reliable, flexible, secure, stable, and boring. And that’s a very good thing.

We hope you’ll continue to find our [demo repo](https://github.com/cloudnativedevops/demo) a useful and up-to-date place for learning how to build and deploy cloud native applications. And if you haven’t yet read our book, may we humbly invite you to [take a look](https://amzn.to/2PEPTjc)?

