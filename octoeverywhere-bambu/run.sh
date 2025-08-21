#!/usr/bin/env bashio
set -e

# Load configuration
COMPANION_MODE=$(bashio::config "COMPANION_MODE")
PRINTER_IP=$(bashio::config "PRINTER_IP")
ACCESS_CODE=$(bashio::config "ACCESS_CODE")
SERIAL_NUMBER=$(bashio::config "SERIAL_NUMBER")

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Run OctoEverywhere with the provided config
exec /usr/local/bin/node /app/octoeverywhere/main.js \
  --mode "${COMPANION_MODE}" \
  --ip "${PRINTER_IP}" \
  --access "${ACCESS_CODE}" \
  --serial "${SERIAL_NUMBER}"
