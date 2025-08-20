ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.3.2
FROM octoeverywhere/octoeverywhere:latest

RUN apk add --no-cache jq

COPY run.sh /run.sh
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
