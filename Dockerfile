FROM alpine:3.7

EXPOSE 9150
CMD ["/usr/bin/tor"]

RUN apk --update add tor && \
    rm -rf /var/cache/*

USER tor
