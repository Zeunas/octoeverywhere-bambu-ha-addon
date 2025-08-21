#!/usr/bin/env bash
# Load options from HA Supervisor add-on configuration
COMPANION_MODE=$(bashio::config "COMPANION_MODE")
PRINTER_IP=$(bashio::config "PRINTER_IP")
ACCESS_CODE=$(bashio::config "ACCESS_CODE")
SERIAL_NUMBER=$(bashio::config "SERIAL_NUMBER")

# Print environment (for debugging)
echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Execute OctoEverywhere Docker container with passed variables
exec docker run --rm \
  -e COMPANION_MODE="${COMPANION_MODE}" \
  -e PRINTER_IP="${PRINTER_IP}" \
  -e ACCESS_CODE="${ACCESS_CODE}" \
  -e SERIAL_NUMBER="${SERIAL_NUMBER}" \
  octoeverywhere/octoeverywhere:latest
