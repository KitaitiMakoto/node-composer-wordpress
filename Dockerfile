FROM node:6
VOLUME /repo
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" && \
    apt update -y && apt install -y zip composer php-mbstring php-xml yarn && \
    wget https://wordpress.org/latest.tar.gz && tar xfv latest.tar.gz
