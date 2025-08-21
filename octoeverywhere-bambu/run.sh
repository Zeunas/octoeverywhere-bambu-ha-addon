#!/usr/bin/env sh
set -e

# Print environment for debugging
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
