FROM alpine:latest as builder

# install hugo
ENV HUGO_VERSION=0.37.1
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp/
RUN tar -xf /tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C /usr/local/bin/


# build site
COPY . /source
RUN hugo --source=/source/ --destination=/public/

FROM nginx:stable-alpine
COPY --from=builder /public/ /usr/share/nginx/html/
EXPOSE 80
