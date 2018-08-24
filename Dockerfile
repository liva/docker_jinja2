FROM alpine

RUN apk add --update \
    bash \
    python \
    python-dev \
    py-pip \
    && pip install jinja2 \
    && rm -rf /var/cache/apk/*
RUN touch /etc/docker_jinja2_env
