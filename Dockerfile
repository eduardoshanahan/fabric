FROM eduardoshanahan/paramiko:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk --update \
    add --no-cache --virtual .install_dependencies_fabric \
    python-dev \
    py-pip \
&&  pip install fabric \
&&  apk del .install_dependencies_fabric \
