# Use Docker Hub version to avoid GHCR authentication issues
FROM docker.io/octoeverywhere/octoeverywhere:latest

# Copy our wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our script as the container entrypoint
CMD ["/run.sh"]
