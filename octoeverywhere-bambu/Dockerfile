FROM octoeverywhere/octoeverywhere:latest

# Install jq for parsing HA options.json
RUN apk add --no-cache jq

# Add wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use wrapper as CMD
CMD [ "/run.sh" ]
