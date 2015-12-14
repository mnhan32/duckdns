FROM docker.io/alpine:latest
MAINTAINER Menghan Ho <mnhan32@gmail.com>
RUN apk add --update curl
ADD duck.sh /duckdns/duck.sh
ADD updateCrontab.sh /duckdns/updateCrontab.sh

RUN \
chmod +x /duckdns/duck.sh &&\
chmod +x /duckdns/updateCrontab.sh &&\
touch /duckdns/duck.log &&\
touch /duckdns/latestUpdateTime.log &&\
/duckdns/updateCrontab.sh

ENTRYPOINT ["crond","-f"]

