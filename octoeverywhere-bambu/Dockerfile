FROM octoeverywhere/octoeverywhere:latest

# Add our wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our script instead of the upstream CMD
CMD [ "/run.sh" ]
