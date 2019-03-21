---
title: "'Cloud Native DevOps with Kubernetes' is published!"
date: 2019-03-11T10:36:56-08:00
aliases:
    - /posts/2019-03-12-the-big-day-is-here/
---

The big day is here. It's been a long time coming, but 'Cloud Native DevOps with Kubernetes' is finally published! Your pre-ordered copies should be with you very soon, if they're not thumping on the doorstep already. If you didn't pre-order, what were you thinking? Go ahead and buy the book right now:

[{{% img-responsive "/static/img/cndk_cover_small.jpeg" %}}](https://amzn.to/2PEPTjc)

[Buy 'Cloud Native DevOps with Kubernetes' on Amazon.com](https://amzn.to/2PEPTjc)

[Buy 'Cloud Native DevOps with Kubernetes' on Amazon.co.uk](https://amzn.to/2PGkZa0)

## Cloud Native DevOps with Kubernetes: Building, Deploying, and Scaling Modern Applications in the Cloud

Some reader reviews:

> _The most encompassing, definitive, and practical text about the care and feeding of Kubernetes infrastructure. An absolute must-have._<br>
> —Jeremy Yates, SRE Team, The Home Depot

> _This book got me really excited. It's a goldmine of information for anyone looking to use Kubernetes, and I feel like I've levelled up!_<br>
> —Adam McPartlan (@mcparty), Senior Systems Engineer, NYnet

> _Cloud Native DevOps is an essential guide to operating today's distributed systems. A super clear and informative read, covering all the details without compromising readability._<br>
—Will Thames, Platform Engineer, Skedulo

Basically, this is the book we wish we'd had when we started trying to do stuff with Kubernetes. It explains the whole background to containers and Kubernetes, tells you what your options are for getting Kubernetes, what to do with it once you've got it, how to run it, how to deploy and scale your apps, how to secure your containers, how to monitor and gather metrics on your services, and much, much more! (See the [table of contents](/posts/2018-12-30-whats-in-the-book/))

Vital statistics:

* **Pages**: 346
* **Chapters**: 16
* **Words**: 97,115
* **Writing time**: 433hrs, 35m

<!--more-->

## What's it about?

In the world of IT operations, the key principles of DevOps have become well understood and widely adopted, but now the landscape is changing. A new application platform called Kubernetes has become rapidly adopted by companies all over the world and in all kinds of different industries. As more and more applications and businesses move from traditional servers to the Kubernetes environment, people are asking how to do DevOps in this new world.

This book explains what DevOps means in a cloud native world where Kubernetes is the standard platform. It will help you select the best tools and frameworks from the Kubernetes ecosystem. It will also present a coherent way to use those tools and frameworks, offering battle-tested solutions that are running right now, in production, for real.

## What will I learn?

You'll learn what Kubernetes is, where it comes from, and what it means for the future of software development and operations. You'll learn how containers work, how to build and manage them, and how to design cloud native services and infrastructure.

You'll understand the trade-offs between building and hosting Kubernetes clusters yourself, and using managed services. You'll learn the capabilities, limitations, and pros and cons of popular Kubernetes installation tools such as kops, kubeadm, and Kubespray. You'll get an informed overview of the major managed Kubernetes offerings from the likes of Amazon, Google, and Microsoft.

You'll get hands-on practical experience of writing and deploying Kubernetes applications, configuring and operating Kubernetes clusters, and automating cloud infrastructure and deployments with tools such as Helm. You'll learn about Kubernetes support for security, authentication, and permissions, including Role-Based Access Control (RBAC), and best practices for securing containers and Kubernetes in production.

You'll learn how to set up continuous integration and deployment with Kubernetes, how to back up and restore data, how to test your cluster for conformance and reliability, how to monitor, trace, log, and aggregate metrics, and how to make your Kubernetes infrastructure scalable, resilient, and cost-effective.

To illustrate all the things we talk about, we apply them to a very simple demo application. You can follow along with all our examples using the code from our Git repo.

## Who is the book for?

This book is most directly relevant to IT operations staff responsible for servers, applications, and services, and developers responsible for either building new cloud native services, or migrating existing applications to Kubernetes and cloud. We assume no prior knowledge of Kubernetes or containers—don't worry, we'll walk you through all that.

Experienced Kubernetes users should still find much valuable material in the book: it covers advanced topics such as RBAC, continuous deployment, secrets management, and observability. Whatever your level of expertise, we hope you'll find something useful in these pages.

## What questions does it answer?

In planning and writing this book, we spoke to hundreds of people about cloud native and Kubernetes, ranging from industry leaders and experts to complete beginners. Here are some of the questions they said they wanted a book like this to answer:

* "I'd like to learn why I should invest my time in this technology. What problems will it help to solve for me and my team?"

* "Kubernetes seems great, but it's quite a steep learning curve. Setting up a quick demo is easy, but operating and troubleshooting it seems daunting. We'd like some solid guidance on how people are running Kubernetes clusters in the real world, and what problems we're likely to encounter."

* "Opinionated advice would be useful. The Kubernetes ecosystem has too many options for beginning teams to choose between. When there are multiple ways of doing the same thing, which one is best? How do we choose?"

And perhaps the most important question of all:

* "How do I use Kubernetes without breaking my company?"

## Hear John and Justin chatting about the book

We were interviewed a couple of months ago on DevOps.com about the book, cloud native DevOps in general, and Kubernetes and container security in particular. Watch and listen to that interview here:

[Securing Modern Applications in the Cloud](/posts/2018-12-08-securing-modern-applications/)

## See the code examples

All the code referenced in the book (and there's a _lot_ of code) is available from our GitHub repo:

https://github.com/cloudnativedevops/demo

We've aimed to make the repo quite usable even if you don't have the accompanying book. There's a very simple demo application, which we develop progressively throughout the book, containerizing it, deploying it to Kubernetes, adding config and secrets, and so on. As each chapter introduces new concepts and techniques, we illustrate them by applying those techniques to the demo app.

Each section has a detailed README explaining how the code works and how to use it. For example:

[Build and run the demo application](https://github.com/cloudnativedevops/demo/tree/master/hello)

Give it a try and let us know what you think. We'd also be delighted if you can contribute new examples, or adapt existing code to new platforms. Pull requests welcome!