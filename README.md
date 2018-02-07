# blog
https://cloudnativedevopsblog.com

## Setup

`brew install hugo`

## Writing new post

`hugo new posts/TITLE.md`

When ready to publish, remove `draft: true` from the file.

`git add posts/TITLE.md`

`git commit -m "New post about ..."`

`git push origin master`

## Deployment

The blog will automatically build and deploy on any push to the `master` branch.
