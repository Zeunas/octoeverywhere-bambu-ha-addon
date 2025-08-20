ARG BUILD_FROM
FROM $BUILD_FROM

# Install docker-cli inside addon container (needed for run.sh spawning)
RUN apk add --no-cache docker-cli bash

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
