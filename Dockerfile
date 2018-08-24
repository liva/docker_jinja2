FROM alpine

RUN apk add --update \
    bash \
    python3 \
    python3-dev \
    make \
 && if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi \
 && if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi \
 && pip install jinja2 \
 && rm -rf /var/cache/apk/*
RUN touch /etc/docker_jinja2_env
