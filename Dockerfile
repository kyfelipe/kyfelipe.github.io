FROM jekyll/jekyll:latest
FROM jekyll/minimal:latest
FROM jekyll/builder:latest
LABEL maintainer="Felipe Côrtes"
ENV PORT=4000
COPY . /var/www
WORKDIR /var/www
RUN jekyll build
EXPOSE $PORT