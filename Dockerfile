FROM python:3.4-alpine

RUN apk add --update \
    bash \
    make \
 && pip install jinja2 \
 && pip install pyyaml \
 && rm -rf /var/cache/apk/*
RUN touch /etc/docker_jinja2_env
