# Use a multi-arch HA base image for aarch64
FROM ghcr.io/home-assistant/aarch64-base:latest

# Install required packages
RUN apk add --no-cache bash jq

# Copy our wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our wrapper script as CMD
CMD [ "/run.sh" ]
