FROM ghcr.io/home-assistant/base:latest

# Install required dependencies
RUN apk add --no-cache bash nodejs npm

# Copy OctoEverywhere code (or use upstream image content)
COPY octoeverywhere /app/octoeverywhere

# Copy the HAOS wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our script as CMD
CMD [ "/run.sh" ]
