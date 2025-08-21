# Start from Home Assistant base image (multi-arch)
FROM ghcr.io/home-assistant/aarch64-base:latest

# Copy our run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Copy OctoEverywhere code (optional if using upstream image inside)
# COPY octoeverywhere /app/octoeverywhere

# Use our script as entrypoint
CMD [ "/run.sh" ]
