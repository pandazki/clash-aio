#!/bin/sh
wget -O /root/.config/clash/config.yaml "http://subconverter:25500/sub?proxy_provider=true&target=clash&url=${RAW_SUB_URL}"
# Switch to the container command
exec "/clash"