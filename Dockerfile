FROM alpine:3.5
MAINTAINER George Kutsurua <g.kutsurua@gmail.com>

RUN apk --no-cache add postfix postfix-pcre postfix-pgsql &&\
	rm -rf /var/cache/apk/*

EXPOSE 25

ENTRYPOINT ["/usr/lib/postfix/master"]
CMD ["-c", "/etc/postfix"]
