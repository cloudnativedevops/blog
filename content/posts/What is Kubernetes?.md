---
title: "What is Kubernetes?"
date: 2020-04-25T17:14:12+01:00
description: "A simple explanation in plain language of what Kubernetes is, what it does, what problems it solves, and why it matters. At last!"
---
You'll find lots of blog posts and tutorials anxious to explain what Kubernetes is, in terms of APIs, clustering, reconciliation loops, and goodness knows what else. What they don't tell you is _why_. Why do we need Kubernetes? Actually, let's ask an even more fundamental question: _Do_ we need Kubernetes? What's the point of it in the first place? How do I know whether I have a problem that Kubernetes solves or not?

To answer that, we're going to need to take a short detour involving eggs, jars, and omnibuses, via some big metal boxes, and ending up with an orchestra, a blue-green canary, and, perhaps inevitably, the Borg. Hold tight.

<!--more-->

## Why is software hard?

_Writing_ software is easy; any child can do it. In fact, children seem to find it easier. _Deploying_ software, as in distributing it to people and making it work, is a whole other story.

To deploy a piece of software, you need not only the software itself, but its _dependencies_: libraries, interpreters, and so on. You also need its _configuration_. License keys, database passwords, system settings: everything that turns raw software into a usable service.

## Eggs, jars, and omnibuses

Earlier attempts to solve this problem include using _configuration management_ systems, such as Puppet or Ansible, and language-specific packaging mechanisms, like Java's JAR files, or Python's eggs, or Ruby's gems.

Another solution is the _omnibus package_, which, as the name suggests, attempts to cram everything the application needs inside a single file. But none of these completely solves the problem, because not only do you need to manage these various kinds of packages, but you also need to manage a fleet of servers to run them on.

## Big metal boxes

To solve these problems, the tech industry borrowed an idea from the shipping industry: the _container_. A truck trailer is essentially a big metal box on wheels. If you can separate that _container_ from the wheels and chassis used to transport it, you have something that is very easy to lift, load, stack, and unload, and can go right onto a ship or another truck at the other end of the voyage.

The software container is exactly the same idea: a standard packaging and distribution format that is generic and widespread. It contains everything the application needs to run. Distribute your application as a container image, and it will run on any platform that supports the standard container format.

## A young person's guide to orchestration

Operations teams, too, find their workload greatly simplified by containers. Instead of having to maintain a sprawling estate of machines of various kinds, architectures, and operating systems, all they have to do is run a _container orchestrator_: a piece of software designed to join together many different machines into a _cluster_: a kind of unified compute substrate, which appears to the user as a single very powerful computer on which containers can run.

Now enter a company you might have heard of. Google was running containers at scale for production workloads long before anyone else. Nearly all of Google's services run in containers: Gmail, Google Search, Google Maps, Google App Engine, and so on. Because no suitable container orchestration system existed at the time, Google was compelled to invent one.

## From Borg to Kubernetes

Borg, Google's original container orchestrator, is essentially a centralized management system that allocates and schedules containers to run on a pool of servers. While very powerful, Borg is tightly coupled to Google's own internal and proprietary technologies, difficult to extend, and impossible to release to the public.

In 2014, Google founded an open source project named Kubernetes (from the Greek word κυβερνήτης, meaning "helmsman, pilot") to be a container orchestrator that everyone could use, based on the lessons learned from Borg and its successor, [Omega](https://ai.google/research/pubs/pub41684.pdf).

As our friend Kelsey Hightower puts it, "Kubernetes does the things that the very best system administrator would do: automation, failover, centralized logging, monitoring. It takes what we've learned in the DevOps community and makes it the default, out of the box."

## Everybody loves Kubernetes

Ops staff love Kubernetes for these reasons, but there are also some significant advantages for developers. Kubernetes greatly reduces the time, effort, and downtime it takes to deploy software. It also enables modern practices such as _canary deployments_, gradually rolling out updates one server at a time to catch problems early, and _blue-green_ deployments: spinning up a new version of the system in parallel, and switching traffic over to it once it's fully up and running.

Demand spikes need no longer take down your service, because Kubernetes supports autoscaling. Because redundancy and failover are built in, your application will be more reliable and resilient.

The business will love Kubernetes too, because it cuts infrastructure costs and makes much better use of a given set of resources. Traditional servers, even cloud servers, are mostly idle most of the time. Kubernetes takes that wasted capacity and puts it to work.

## Crossing clouds: the portability of Kubernetes applications

Kubernetes is _provider-agnostic_: it doesn't care whether you're using bare metal servers, cloud provider X, Y, or Z, or even combinations of different providers. Kubernetes takes advantage of whatever features are available: for example, a load-balanced Kubernetes service on Google Cloud will create a Google Cloud load balancer, on Amazon it will create an AWS load balancer.

Kubernetes abstracts away the cloud-specific details, letting you focus on defining the behavior of your application. Just as containers are a portable way of defining software, Kubernetes resources provide a portable definition of how that software should run.

_This article is partly excerpted from chapter 1 of [Cloud Native DevOps with Kubernetes: Building, Deploying, and Scaling Modern Applications in the Cloud](https://amzn.to/2PEPTjc), by John Arundel and Justin Domingus, published by O'Reilly._