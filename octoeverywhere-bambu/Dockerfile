# Use the upstream OctoEverywhere image as base
FROM octoeverywhere/octoeverywhere:latest

# Copy our run wrapper
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our wrapper as entrypoint
CMD [ "/run.sh" ]
