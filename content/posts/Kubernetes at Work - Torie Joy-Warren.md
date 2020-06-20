---
title: "Kubernetes at Work with Torie Joy-Warren"
date: 2020-06-20T16:17:16+01:00
description: "Kubernetes is about solving real problems. We talk to 100% real software engineer Torie Joy-Warren about her experiences with k8s and cloud."
---

In the [Cloud Native DevOps with Kubernetes](https://amzn.to/2PEPTjc) book, we aimed to go beyond the basics to provide you with real-world, battle-tested solutions to the kind of real-world problems you're likely to come across as an operations developer or infrastructure engineer. We've all heard the sales pitches for Kubernetes, but we know that things can get complicated when the rubber meets the road.

In that spirit, then, this is the first of a series of interviews with working engineers about their experiences with Kubernetes and cloud, what makes their jobs easier, what frustrates them, and what advice they'd give to people just getting into the cloud native world.

This week, we talk to software engineer Torie Joy-Warren. Torie lives in a tree-house near Squitch Lake, Washington, with her twelve capuchin monkeys and a priceless Royal Doulton tea service. Her hobbies include backgammon, amateur astronomy, and Ancient Persian.

<!--more-->

<strong>Hi, Torie! Thanks for visiting with us. What's your tech background and what sort of stacks have you worked with over the years?</strong>

I've been a software engineer professionally for 4 years now at a tech startup with about 30 other engineers. I've worked mostly on the backend, but have dabbled in frontend work when needed. Most of my experience has been working with Ruby & Rails, and I've also used JavaScript, Go, and the tiniest bit of Python.

<strong>Cool! We're [superfans of Go](https://bitfieldconsulting.com/golang/learn) around here. Tell us about your Gophering background.</strong>

I spent about 6 months using exclusively Go to build a new data syncing service. The switch from Ruby was not seamless, but having that opportunity to think about code in such a different way improved my Ruby code as well. Because we were building a service from scratch, we spent a lot of time trying to understand best practices for Go apps. Due to the relative newness of Go and its ecosystem, we ended up improvising a lot.

<strong>Neat. So would you talk a little about your experiences working with Kubernetes?</strong>

Most of my experience with Kubernetes has been tangential. Our ops team did a lot of the work to get us set up with Kubernetes and Docker, and now when we build new apps we take that original setup, and modify it as needed for our new use case. This has definitely forced us devs to be more involved in the deployment process and take more ownership over it, though we still rely heavily on our ops engineer to make it happen.

<strong>What do you find helpful about k8s, as a developer?</strong>

It gives me much more insight into how our deployment process works, what is configured where, and where to look when things go wrong. When we relied more heavily on Puppet, our deployment process felt like much more of a black box. Having k8s configurations live directly in your app repository makes it that much more accessible, and that much easier to play around with.

<strong>Moving to the dark side for a moment, what do you find the most frustrating about using Kubernetes?</strong>

The steep learning curve. It's not the sort of thing where you can learn about only the specific piece of it you need to change and ignore the rest. You need a lot more up-front knowledge about the whole ecosystem to make even minor changes. Though arguably that's a good thing, given the importance of deployment pipelines!

<strong>Do you think Kubernetes has made your work as a developer easier or more complicated?</strong>

Definitely more complicated at the start! But as I've gotten used to it and learned more about it, it has become easier. The deploy process is smoother, and it is much clearer at which point things go wrong in a deploy than it used to be. I don't always know how to fix it, but at least I can point our ops engineer to a specific failing line!

<strong>For folks who are just getting started with cloud native tech, Go, and Kubernetes, what do you think they need to focus on? How should they learn what they need to know?</strong>

I'm usually a huge promoter of just diving in and playing around with things (like in Go), but cloud-native software (and k8s) is one area where starting with a tutorial and/or a more time-intensive resource like a book is incredibly helpful.

<strong>It's funny you should say that! Because our Kubernetes book is [available now](https://amzn.to/2PEPTjc). Sorry, we interrupted you.</strong>

 I'd also recommend starting with understanding containers first and building up from there to k8s and other pieces of the ecosystem. When it comes to Go, I'd recommend spending some time in Go's official packages to get a feel for the unique patterns in the language, especially if you're coming from an object-oriented language like Ruby. It's a great place to understand how to write code the "Go way" when you aren't sure how best to structure a file or function.

<strong>Great advice, Torie! Thanks so much for stopping by.</strong>

It's my pleasure!