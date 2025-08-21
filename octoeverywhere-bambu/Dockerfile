ARG BUILD_FROM=octoeverywhere/octoeverywhere:latest
FROM ${BUILD_FROM}

# Copy run.sh into container
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set entrypoint to your wrapper
CMD [ "/run.sh" ]
