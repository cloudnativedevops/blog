FROM alpine:latest

# install hugo
ENV HUGO_VERSION=0.35
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp/
RUN tar -xf /tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C /usr/local/bin/

# build site
COPY . /site
CMD hugo server --source=/site/ --destination=/public/ --bind 0.0.0.0

EXPOSE 1313
