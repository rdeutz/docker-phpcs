FROM  php:7.0-cli

MAINTAINER Robert Deutz

# Install
RUN apt-get update \

    && apt-get install -y curl zip unzip git software-properties-common \
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && apt-get remove -y --purge software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*