FROM node:6
VOLUME /repo
RUN apt update -y && apt install -y zip composer php-mbstring php-xml && \
    wget https://wordpress.org/latest.tar.gz && tar xfv latest.tar.gz
