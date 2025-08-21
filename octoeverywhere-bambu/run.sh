#!/usr/bin/env sh
set -e

# Dump all environment variables for debugging
echo "=============== FULL ENVIRONMENT ==============="
env
echo "================================================"

# Print only OctoEverywhere relevant variables
echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Run OctoEverywhere with provided options
exec octoeverywhere \
  --mode "${COMPANION_MODE}" \
  --ip "${PRINTER_IP}" \
  --access "${ACCESS_CODE}" \
  --serial "${SERIAL_NUMBER}"
