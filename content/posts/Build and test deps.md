---
title: "Managing build and test dependencies"
date: 2019-08-25T12:00:00Z
---

Many applications have different sets of required packages depending on the environment in which the application is running. For example, when running your app locally on your workstation you may have packages for linting, syntax checking, debugging, and automatically reloading as you make changes. The same is true in your continuous integration test suites. There are likely packages you need in order to run through the test suite, such as `rspec` or `pytest`  but you don't want these dev and test dependencies bundled along with your application when you go to deploy in staging and production. In general minimal containers have a reduced attack surface for security issues and the fewer programs there are in your container, the fewer potential security vulnerabilities. Smaller containers also means faster pulls, they take up less space on disk, and deploys can happen faster.

We go over some of the strategies for keeping your runtime containers lean in Chapter 2, including multi-stage Dockerfiles and optimizing the layers in a container. In our [demo Go application](https://github.com/cloudnativedevops/demo) we provide a simple example of what a multi-stage Dockerfile looks like:

```
FROM golang AS build

WORKDIR /src/
COPY main.go go.* /src/
RUN CGO_ENABLED=0 go build -o /bin/demo

FROM scratch
COPY --from=build /bin/demo /bin/demo
ENTRYPOINT ["/bin/demo"]
```

TODO: build just build phase and run tests
TODO: Chapter 14 - Building the Test Container
