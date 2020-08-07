---
title: "Kubernetes at Work with Katy Pedelty"
date: 2020-08-04T10:17:16+01:00
description: "Developer Katy Pedelty talks to the Cloud Native DevOps blog about her Go and Kubernetes experiences. Not forgetting Sophie the dog."
---

We recently interviewed software engineer [Torie Joy-Warren](/posts/kubernetes-at-work-torie-joy-warren/) about her experiences with Kubernetes and cloud. Here's the next post in our 'Kubernetes at Work' series: an interview with Seattle-based developer Katy Pedelty. Welcome, Katy!

{{% img-responsive "/static/img/katy.jpg" %}}

<em>Katy moved to Seattle fresh out of school (go bears!) and has gleefully embraced drizzly weather and tiny 8-oz lattes. When not gazing into the eyes of her 11-year-old <s>muppet</s> bich-poo (look it up), Sophie, she can be found singing, napping, or stuffing her face with M&Ms.</em>

<strong>Hi, Katy! We really appreciate you dropping in to share your experiences with Kubernetes. What's your background in tech, and how did you get into development in the first place?</strong>

I didn’t ever think of computer science as something I might be into until I got to college. Luckily at that point another student inspired me to try Electrical Engineering and Computer Science (cred: SWE), and it turned out that I absolutely loved coding. So my first experience with software development was fall of freshman year! (I had written some HTML and CSS in 4th grade to make my Neopets shop look cooler.)

Since then, my experience has been 4 years of college, which was generally very positive, 7 years of full-time employment, and half a masters in CSE from UW. I’ve always preferred CS to EE, which bums me out just a little because that was even more male dominated at school, and I’d love to have had the chance to #represent.

In my time in engineering, I’ve had moments of great epiphany, stress and frustration about deadlines, and interpersonal challenges. Oddly enough the greatest challenges to me since joining the workforce have, in my opinion, been bad management. I try not to let that color my experience of programming in general.

<!--more-->

<strong>We hear that! Speaking of programming, can we talk Go? You knew this was [bound to come up](https://bitfieldconsulting.com/golang/learn), right? When did you get into Go and where are you with it now?</strong>

I first was introduced to Go in a half-day (full-day?) class at Google, in which we basically attended a lecture and had limited time to try coding on our own. Years later, none of that was still in my brain, and I actually started working regularly on an app at CareZone coded in Go.

The experience was at first somewhat off-putting. I expect to be able to pick up languages without having to do much homework. For Go, I actually needed to do some reading to learn what was happening in much of the codebase.

I liked it though, and I wanted a performant language for a homework assignment in my NLP class, so I wrote a homework in Go soon after working on the Go app at CZ. After that I felt like a Go master. And then I didn’t write it again for some time and was back to square, well... Two maybe.

<strong>We can relate. So, since this post is at least nominally about Kubernetes, and developers' real-life experiences with it behind the hype, let's turn to that. Real talk: are you now or have you ever been a Kuberneticist?</strong>

I have truly very little experience with Kubernetes. I heard the word ALWAYS at Google; the team was in our org (sometimes) and it seemed, to me, a more highly prioritized product than other bits of GCP.

Since then I have had occasion to try to understand containers in Docker as well as K8s, and I have learned to dread moments where I might need to do something with the tool.

I follow instructions from the Wiki by rote, and if there’s a problem I never know if I should finally dive in and learn the whole thing, or just get one-time help from a coworker. So far it’s always been the latter (often after a brief foray into docs), and when the same problem comes up in the future, it all happens again because none of it seems to stick in my brain.

I have a Kubernetes publication that I am actually reading now, at long last, and I am tentatively hopeful that next time I need to use a container or container engine or nodes or clusters or whatever the heck all those things are, I might have some better context for what I’m looking at.

<strong>[If only there was a great Kubernetes book that you could just buy from Amazon or something](https://amzn.to/2PEPTjc).</strong>

I know, right?

<strong>We appreciate your candor. So, if this isn't a loaded question, which it is, what do you find most helpful about Kubernetes?</strong>

I mean, you can tell that I do not find K8s helpful.

After reading [Torie's interview](/posts/kubernetes-at-work-torie-joy-warren/), I’d like to add that learning Puppet felt much easier to me. But then there was indeed that hurdle of looking at a new repo which you’d otherwise never see. I would not have jumped that hurdle if I hadn’t been explicitly invited to.

<strong>Okay, so you might find it easier to answer the other side of that question: what do you find frustrating about Kubernetes?</strong>

I believe part of the problem is that it has terminology that doesn’t immediately suggest strong analogs in my brain, so when I learn anything, I feel like a sieve. I learn it momentarily, but there’s nowhere for my brain to file away the information for later, since there are so few connections that I can make to other deployment/hosting systems I’ve come in contact with (primarily VMs and bare metal).

I think it’s also likely that the terminology can’t have strong analogs, because the concept is different from any other services/tools I have used regularly in the past.

<strong>For real. Do you think Kubernetes has made your work as a developer easier or more complicated, then, overall?</strong>

Behind the scenes, maybe it’s easier. There’s some nice tooling in GCP that I benefit from, and it may be partially due to Kubernetes that we were able to have easier access to some of that tooling. But honestly, I am not really sure about that.

When *I* have to do anything with Kubernetes, I can’t say I find it easy.

<strong>How would you advise your younger self? For folks who are just getting started with cloud native tech, Go, and Kubernetes, how should they approach learning it?</strong>

I think for me the lesson is that some of this stuff is unlike what you may have seen before. If you are not great at memorizing things, like me, probably the best way to start is to put in time up front to get a foundation on which to build your understanding, rather than relying on creating connections to your previous experiences.

<strong>Sounds very sensible. What would you like to see change or improve in the Kubernetes world, from a developer's perspective?</strong>

So, I do have some thoughts on this from my work at Google and my proximity to the team that worked on developing a framework for service consumption.

I think with K8s, there may be some stronger ways to utilize other APIs with services running in your container. GCP is a big-ass ecosystem, and it’s nice that it can all work independently, but for those organizations that are all-in or want to become so, API access and secrets, definitions, and metadata (like rate limiting) seem like they could have potential to require less setup, manual secret encryption and storage, and perhaps better change management, if customers could run their applications in containers that are part of a larger, more regular framework.

Those ideas might just be stolen from that team, though. Personally when I use cloud providers, my frustrations tend to be knowing the “right way” to manage access, and feeling confident that I am not creating a big ol’ security risk because I don’t know the right way to talk to a service.

<strong>It was really great to talk with you, Katy. Thanks so much! Keep on crushing it, won't you?</strong>

Thank you for having me! I sure will.