FROM eduardoshanahan/paramiko:2.4.0.2

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk add --no-cache --virtual .install_dependencies_fabric \
    python-dev \
    py-pip \
&&  pip install fabric \
&&  apk del .install_dependencies_fabric

ENTRYPOINT ["/bin/sh"]
