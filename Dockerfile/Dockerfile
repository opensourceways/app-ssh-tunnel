FROM alpine:3.7
MAINTAINER tommylikehu@gmail.com

RUN apk add --no-cache --update openssh-client && \
    apk add --no-cache --update tini

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 1-65535
ENTRYPOINT ["entrypoint.sh"]
