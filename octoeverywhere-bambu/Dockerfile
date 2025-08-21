FROM octoeverywhere/octoeverywhere:latest

# Install jq to parse HA options.json
RUN apk add --no-cache jq

# Add our wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our script as the entrypoint
CMD [ "/run.sh" ]
