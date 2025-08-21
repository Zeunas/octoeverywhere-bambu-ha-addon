FROM octoeverywhere/octoeverywhere:latest

# Copy our wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use our script as the default command
CMD [ "/run.sh" ]
