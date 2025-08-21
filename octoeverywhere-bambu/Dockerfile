FROM octoeverywhere/octoeverywhere:latest
RUN apk add --no-cache bash bashio

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
