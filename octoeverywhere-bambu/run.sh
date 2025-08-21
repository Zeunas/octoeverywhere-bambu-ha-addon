#!/usr/bin/env bash

# Print environment for debugging
echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=bambu"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Run the upstream OctoEverywhere entrypoint
exec /app/octoeverywhere/bin/octoeverywhere \
    --mode "bambu" \
    --ip "${PRINTER_IP}" \
    --access "${ACCESS_CODE}" \
    --serial "${SERIAL_NUMBER}"
