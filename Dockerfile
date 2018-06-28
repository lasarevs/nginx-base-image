FROM debian:latest

MAINTAINER Lasarevs

RUN apt-get update \
    && apt-get install -y \
        nginx \
        nginx-extras \
        curl \
        git

RUN apt-get install -my wget gnupg \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]