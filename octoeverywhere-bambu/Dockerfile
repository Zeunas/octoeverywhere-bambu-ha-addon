FROM octoeverywhere/octoeverywhere:latest

# Install jq for parsing HA options.json
RUN apk add --no-cache jq

# Add our wrapper
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Override the CMD
CMD [ "/run.sh" ]
