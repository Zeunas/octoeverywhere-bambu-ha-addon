FROM ghcr.io/home-assistant/amd64-base:latest

# Required for JSON parsing and docker execution
RUN apk add --no-cache bash jq docker-cli

# Copy our run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Start wrapper script
CMD [ "/run.sh" ]
