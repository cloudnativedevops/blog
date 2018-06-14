FROM klakegg/hugo:0.42.1-asciidoctor as builder

# build site
COPY . /source
RUN hugo --source=/source/ --destination=/public/

FROM nginx:stable-alpine
COPY --from=builder /public/ /usr/share/nginx/html/
EXPOSE 80
