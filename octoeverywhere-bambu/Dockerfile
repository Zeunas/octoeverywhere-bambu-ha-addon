FROM ghcr.io/octoeverywhere/octoeverywhere:latest

# Copy the entrypoint script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set the entrypoint
ENTRYPOINT ["/run.sh"]
