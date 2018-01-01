FROM eduardoshanahan/paramiko:2.4.0.3

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk add --virtual .install_dependencies_fabric \
    python-dev \
    py-pip \
&&  pip install fabric \
&&  apk del .install_dependencies_fabric \
&&  apk add zlib \
    zlib-dev \
    libressl \
    libressl-dev 

ENTRYPOINT ["/bin/sh"]
