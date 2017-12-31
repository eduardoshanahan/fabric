FROM eduardoshanahan/paramiko:2.4.0.3

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk add --virtual .install_dependencies_fabric \
    python-dev \
    py-pip \
&&  apk add zlib \
    zlib-dev \
    libressl \
    libressl-dev \
&&  pip install fabric \
&&  apk del .install_dependencies_fabric

ENTRYPOINT ["/bin/sh"]
