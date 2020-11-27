FROM alpine:3.12

LABEL maintainer=thomas.bruckmann@softgarden.de


RUN    apk update \
    && apk upgrade \
    && apk add --no-cache \
                rsync \
                openssh-client \
                ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

RUN    chmod +x /entrypoint.sh \
    && chown root:root /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]