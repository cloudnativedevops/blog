---
title: "Build a Golang Docker image"
date: 2020-02-29T10:29:52Z
description: "Let's build a Docker container with Golang! It sounds complicated, but it really isn't. All you need are a few tools, a couple of simple commands, and ideally some cake. (The cake isn't strictly necessary, but coding is hungry work.)"
---

_This is a guest excerpt from [Golang trainer John Arundel's blog](https://bitfieldconsulting.com/blog). John is one of the authors of 'Cloud Native DevOps with Kubernetes', a full-time Go coder and mentor, and a somewhat less than full-time blogger._

Let's build a Docker container with Golang! It sounds complicated, but it really isn't. All you need are a few tools, a couple of simple commands, and ideally some cake. (The cake isn't strictly necessary, but coding is hungry work. It's a good idea to have some tasty snacks on hand, to keep your strength up.)

<!--more-->

## Install Docker

Docker is a tool for building and running _containers_ (you can read more about these in the [Cloud Native DevOps with Kubernetes](https://amzn.to/2PEPTjc) book). A container is a simple way of distributing software, using a single file called a _container image_.

The technical details don’t really matter for our purposes, but you can think of a container image as being like a ZIP file. It’s a single binary file that has a unique ID and holds everything needed to run the container. This means that if you upload your container to a public repository such as Docker Hub, you can run it anywhere using just Docker. We'll see how to do that shortly.

If you don't have Docker installed already, let's take care of that first. If you have a Mac or a Windows PC, you can download the 'Docker Desktop' application, which has everything you need:

* [Docker Desktop for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac)
* [Docker Desktop for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)

For other platforms, see the [Docker Community Edition downloads page](https://hub.docker.com/search/?type=edition&offering=community).

Once you've installed Docker, run the application, and you'll be all set for the next steps.

_To read the rest of this article, click the link below:_

[Building a Golang Docker image](https://bitfieldconsulting.com/blog/building-a-golang-docker-image)