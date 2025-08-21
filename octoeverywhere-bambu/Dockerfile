FROM octoeverywhere/octoeverywhere:latest

# Install jq (needed to parse Home Assistant options.json)
RUN apk add --no-cache jq

# Add our wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our script instead of the upstream CMD
CMD [ "/run.sh" ]
