FROM ubuntu:bionic

ADD /xivapi.com /vagrant
ADD /common-php /vagrant/src/Common
ADD /start.sh /start.sh
ADD /install.sh /install.sh
ADD /sc-import-redis.sh /usr/local/bin/sc-import-redis.sh

RUN bash /install.sh
CMD ["/start.sh"]
