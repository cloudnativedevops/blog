---
title: "Deciding which Docker tag to use"
date: 2019-03-30T12:00:00Z
---

In this post we're going to talk about how versioning works in Docker container images. We’ll also explore some different strategies you will want to consider when using image version tags in your own Dockerfiles.

Docker container names are split into 2 parts: the name of the container image, and the version tag of the container image. For example, the container `python:3` is a container hosted on Docker Hub at [https://hub.docker.com/_/python](https://hub.docker.com/_/python). The name of the container is `python`, and `3` is the version tag. There are several other version tags of `python` also available, such as:

- `python:3.7`
- `python:3.7.3`
- `python:3-alpine`
- `python:3.7-alpine`
- `python:3.7.3-alpine`
- `python:slim`

Most of the popular languages use a similar tagging pattern in their official images on Docker Hub. Each of these tags represents different variations of an install of Python. Some use a different base operating system images (Alpine VS Debian VS “slimmed-down” Debian), and they also indicate the specific versions of whatever language is installed in the image.

Today the `python:3` container image specifically uses Python version 3.8. Whenever 3.9 is released, that tag will get updated and the `python:3` image will then contain version 3.9 instead. In a similar way, the `python:3.7` image would be the latest available security patch of Python 3.7. Currently that happens to be 3.7.3, but tomorrow that could be 3.7.4 if a new version is released.

When writing your own applications, you will need to decide which version of the base image(s) you will use in the `FROM` statement(s) of your Dockerfile(s). The options include:

- None (just use :latest, for example, just `FROM python`)
- Specify a tagged version number (for example, `python:3`, or `python:3.7`, or `python:3.7.3`)
- The exact `sha256` fingerpint of an image (for example, `python@sha256:7e6c00cc553fdce06c1bcfcbf34c73a0f3623a8fc9ce88c8fb91671f2cbc0dab`)

Let’s look a bit at each option, and discuss why you may want to use one tagging strategy over another.

If you have Docker installed run something like `docker run python`. The output you may see is `Unable to find image 'python:latest' locally`, then some layers get downloaded from Docker Hub, and then you'll see `Downloaded newer image for python:latest`. Note that you didn’t specify the`:latest` tag, but that is what you got. Good or bad, this is the default behavior in Docker [https://docs.docker.com/engine/reference/commandline/pull/](https://docs.docker.com/engine/reference/commandline/pull/).

So which version of Python did you get? And which base operating system? In this case, the `:latest` tag currently points at version 3 of a container with Debian 9 installed. When a new version of Python (or a new version of Debian) is released, the `:latest` tag will point at the newer image.

This is where you have some decisions to make when writing your own Dockerfiles. If you are writing an application in Python, for example, it probably matters very much if you are using Python version 2 or version 3. And when version 4 comes out, you will likely have some work to do in your codebase before you can upgrade. If your Dockerfile starts with `FROM python:latest` then one day you will go to deploy some new code, you’ll build a new container, and the Python in that container will change from version 3 to version 4. You probably don’t want this to happen without some planning involved.

So perhaps you decide to use `FROM python:3` and that way you know that your application will always use the latest patched version of Python 3. Whenever 3.9, 3.10, 3.11, etc. are released, just by deploying new code you’ll automatically be upgrading your Python version along the way. Neat! The downside to this approach is you will likely run into some unexpected failed builds. One day, some package you are using is going to change versions, or have some incompatibility with some other package that changed, and your application will fail to build. This is a frustrating experience to have builds fail when changing code that doesn't touch any package versions.

So maybe you were using `FROM python:3` and one day your builds started failing when the version jumped from `3.7` to `3.8`. You then decide to switch to using `FROM python:3.7` instead. Now, when 3.8, 3.9, 3.10 etc. are released, you won’t automatically bump to those minor release versions without you changing it in your Dockerfile.

You can begin to see where this pattern goes. By starting out at the least specific version tag, you are basically automatically going to be building the newest and latest version of that image. Moving down the spectrum, you can specify a major release versions to use, or the major + minor release version, or even the major + minor + security patch level to use. You also have one additional option: specifying the exact `sha256` fingerprint of an image.

Instead of numbered version tag, you could specify `FROM python@sha256:7e6c00cc553fdce06c1bcfcbf34c73a0f3623a8fc9ce88c8fb91671f2cbc0dab` in your Dockerfile. This is the exact fingerprint of a specific image, and it will never change. This would ensure that nothing about your base image would ever change out from underneath you. This means you probably won't see as many unexpected build failures when some downstream packages. The tradeoff is you won’t be pulling in any newer versions of base images or packages that contain updates, like security patches.

To sum is up: When using something like the `:latest` tag of a public Docker image you are basically always going to be running a patched version of that container, but the packages inside will constantly be changing. By using a specific `sha256` the image won’t change, meaning you won’t get any patches or updates without updating the tag in your Dockerfile.

So which strategy should you use? Ultimately this should be a discussion you will want to have with anyone working on the codebase. Depending on a number of factors such as the number of people working on an application, the resources the team has available, the complexity of the application, and the language used, one tagging strategy may be more appropriate over another.

If you are looking for a place to start out, try starting with using the minor stable release of the language you are using, such as `python:3.7`. Or in the case of ruby, try something like `ruby:2.6`. For Go, start with something like `golang:1.12`, (or try the `alpine` or `slim` versions if you want to use much smaller images). If you run into some unexpected behavior in testing or are constantly having build failures from dependencies changing out from underneath you, move to a more specific tag. You may end up deciding that for that particular Dockerfile you want to use the exact `sha256` for your base container. This is a fine option, just remember that it means you’ll also need to regularly review and update your base image manually in order to pull in any security patches.

Hopefully this has been a useful look at Docker version tags, and the implications of using either a very generic or very specific tag when writing your Dockerfiles. You will find plenty of examples of applications out in the wild using all variations of the options we have discussed. And you will converse with folks who may have very strong opinions on the subject, one way or the other. We encourage you to experiment, understand the pros and cons of all options, and decide in collaboration with your teams what makes sense for any given application. And don’t be afraid to change course if one tagging strategy doesn’t seem to be working out.

Until next time, thanks for reading and let us know what you think.
