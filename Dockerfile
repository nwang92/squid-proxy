FROM alpine:3.6

RUN apk upgrade --update && \
	apk add --no-cache --update \
	squid \
	bash

COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /sbin/entrypoint.sh

EXPOSE 3128

ENTRYPOINT /sbin/entrypoint.sh
