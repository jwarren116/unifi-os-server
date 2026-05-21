FROM ghcr.io/jwarren116/uosserver:0.0.56

LABEL org.opencontainers.image.source="https://github.com/jwarren116/unifi-os-server"

ENV UOS_SERVER_VERSION="5.0.8"

STOPSIGNAL SIGRTMIN+3

COPY uos-entrypoint.sh /root/uos-entrypoint.sh

RUN ["chmod", "+x", "/root/uos-entrypoint.sh"]
ENTRYPOINT ["/root/uos-entrypoint.sh"]