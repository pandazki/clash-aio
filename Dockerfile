FROM dreamacro/clash-premium

# control ui
ARG YACD_VERSION=v0.3.8
ARG YACD_DOWNLOAD_URL="https://github.com/haishanh/yacd/releases/download/${YACD_VERSION}/yacd.tar.xz"

RUN wget -O /tmp/yacd.tar.xz ${YACD_DOWNLOAD_URL} \
    && mkdir -p /ui \
    && tar -xvf /tmp/yacd.tar.xz -C /ui \
    && rm -rf /tmp/yacd.tar.xz

# init config.yaml
COPY preprocess.sh /usr/bin/preprocess.sh

ENTRYPOINT [ "/usr/bin/preprocess.sh" ]
# ENTRYPOINT [ "sh" ]
