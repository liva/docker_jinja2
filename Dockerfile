FROM alpine

RUN apk add --update \
    bash \
    python3 \
    python3-dev \
    make \
    && pip3 install jinja2 \
    && rm -rf /var/cache/apk/*
RUN touch /etc/docker_jinja2_env
