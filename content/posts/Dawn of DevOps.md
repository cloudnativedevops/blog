---
title: "The Dawn of DevOps"
date: 2020-01-25T16:29:52Z
---

### What does 'DevOps' mean? Where did it come from? What came before it? How do you do it? And what happens next?

When we decided to write [Cloud Native DevOps with Kubernetes](https://amzn.to/2PEPTjc), we knew we wanted to explain what DevOps practices look like in the 'new stack' environment: cloud, containers, and Kubernetes. But we didn't want to assume any prior knowledge of these things; that's why we explain in simple terms, with a step-by-step [tutorial](https://github.com/cloudnativedevops/demo/tree/master/hello), what containers are and how to make one, how to get started with Kubernetes, and so on.

But while most people have probably heard of DevOps, not all of them are confident they actually understand what it means. So before explaining what DevOps means in the cloud, let's take a moment to clarify exactly what we mean by 'DevOps' in the first place.

<!--more-->

## The two cultures

Before DevOps, developing and operating software were essentially two separate jobs, performed by two different groups of people. *Developers* wrote software, and they passed it on to *operations* staff, who ran and maintained the software in production. Two quite distinct kinds of jobs: 'devs' and 'ops'. Maybe you already see where this is going.

Whenever you have two groups of people that don't work together, incentives can get misaligned. Developers tend to be focused on (and rewarded for) shipping new features quickly, while operations teams care about making services stable and reliable over the long term.

{{% img-responsive "/static/img/works-on-my.png" %}}

The origins of the DevOps movement lie in attempts to bring these two groups together: to collaborate, to share understanding, to share responsibility for systems reliability and software correctness, and to improve the scalability of both the software systems and the teams of people who build them.

## It's always a people problem

The most important thing to understand about DevOps is that it is primarily an organizational, human issue, not a technical one. This accords with the late, great Jerry Weinberg's 'Second Law of Consulting':

> No matter how it looks at first, it's always a people problem.

Nowadays, and especially in the cloud, hardware is software. So we're all developers now. Ops folks are adopting good software workflows, and developers are learning more about the systems and networks where their code runs. Even more importantly, the formerly separate groups now need to collaborate on writing software that works, and keeping it running in production.

Sounds great. So is this DevOps? The trickiest thing about DevOps is that it's not a specific methodology, or workflow. You can't hire a 'devop'. As John once pointed out in an [interview on the subject](https://www.activestate.com/blog/john-arundel-devops/), DevOps is more like pornography: you know it when you see it.

> Companies which run successful IT operations, particularly web operations, tend to have certain qualities and ways of doing things. You see the people who write the software working closely with the people who deploy and maintain it. Often, they’re the same people.

> You see a lot of pairing, learning, cross-skilling. People operate in fluid, focused, multi-disciplinary teams based on projects rather than skill sets. There’s a sense of constantly dancing on the edge of failure, keeping just ahead of the business, never writing a line of code you don’t need.

Thanks to the DevOps revolution, there will no longer be room in most organizations for devs who can't ops, or ops who don't dev. The distinction between those two disciplines is obsolete, and is rapidly being erased altogether. Developing and operating software are merely two aspects of the same thing.

## Out of the many, one

So can this integration process continue indefinitely? Are there limits to DevOps? Or will the traditional central IT and operations team disappear altogether, dissolving into a group of roving internal consultants, coaching, teaching, and troubleshooting ops issues?

No. Some things still benefit from being centralized. It doesn't make sense for each application or service team to have its own way of detecting and communicating about production incidents, for example, or its own ticketing system, or deployment tools. DevOps is about speeding up development teams, not slowing them down with unnecessary and redundant work.

There still needs to be a strong central team building and supporting the DevOps ecosystem in which all the other teams operate. We like the name _Developer Productivity Engineering_ (DPE) for this. DPE teams do whatever's necessary to help developers do their work better and faster: operating infrastructure, building tools, busting problems.

## Show me the money

So, is it all worth it? Should businesses commit to real change along DevOps lines, and what can they hope to gain from it?

Speed, agility, collaboration, automation, and software quality, that's what. DevOps works, and studies regularly suggest that companies that adopt its principles release software faster, react better and faster to failures and problems, are more agile in the marketplace, and dramatically improve the quality of their products.

The industry is changing, and we change with the industry. If you're not part of the roller, you're part of the road. John outlined his view of the new world in a blog post on [The State of DevOps](https://bitfieldconsulting.com/blog/state-of-devops):

> The software business has moved from the old days of big Everest expeditions with hundreds of Sherpas and tons of supplies, to an Alpine-style business model: small teams, moving fast, with minimal support and overheads, are the quickest to the summit.

> So now the programmers, the builders of castles in the air, and the operators, who make sure the castles don’t fall down, find themselves all in the same tent at 29,000 feet wondering whose job it was, metaphorically, to bring the can opener.

_This article is partly excerpted from the opening chapter of [Cloud Native DevOps with Kubernetes: Building, Deploying, and Scaling Modern Applications in the Cloud](https://amzn.to/2PEPTjc), by John Arundel and Justin Domingus, published by O'Reilly._