#!/usr/bin/env bash
set -e

# Read HA add-on options
PRINTER_IP=$(jq -r '.PRINTER_IP' /data/options.json)
ACCESS_CODE=$(jq -r '.ACCESS_CODE' /data/options.json)
SERIAL_NUMBER=$(jq -r '.SERIAL_NUMBER' /data/options.json)

# Hardcode Bambu mode
COMPANION_MODE=bambu

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Run Node binary directly with env vars inline
COMPANION_MODE=${COMPANION_MODE} \
PRINTER_IP=${PRINTER_IP} \
ACCESS_CODE=${ACCESS_CODE} \
SERIAL_NUMBER=${SERIAL_NUMBER} \
node /app/octoeverywhere/index.js
