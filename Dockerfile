FROM alpine:3.9
LABEL maintainer="https://keybase.io/tcely"

RUN apk --update add \
      python2 py2-yaml && \
    apk add --virtual .build-pytools \
      git py2-pip && \
    git clone --recurse-submodules --single-branch 'https://github.com/HariSekhon/pytools.git' /pytools ; \
    pip install beautifulsoup4 blessings docker ; \
    apk del --purge .build-pytools ; \
    rm -rf /var/cache/apk/* ; \
    /pytools/dockerhub_show_tags.py alpine

ENTRYPOINT ["/pytools/dockerhub_show_tags.py"]
