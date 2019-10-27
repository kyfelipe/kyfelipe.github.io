FROM jekyll/jekyll:latest
LABEL maintainer="Felipe Côrtes"
ENV PORT=4000
COPY . /var/www
WORKDIR /var/www
ENTRYPOINT jekyll serve
EXPOSE $PORT