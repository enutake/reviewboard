FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

# local-setting & init
RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# install
RUN apt-get update -y && \
    apt-get -y install apache2 \
                       mysql-server \
                       cron \
                       vim \
                       git \
                       zip \
                       unzip

RUN apt-get install -y php \
                    php-all-dev \
                    php-curl \
                    php-mysql \
                    php-mbstring \
                    php-bcmath \
                    smarty3\
		    phpunit

COPY ./root /root

COPY bootstrap.sh /bootstrap.sh
RUN chmod 744 /bootstrap.sh

CMD ["/bootstrap.sh"]

