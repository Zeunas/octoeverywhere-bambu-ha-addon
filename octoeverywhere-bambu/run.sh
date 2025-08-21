#!/usr/bin/env bash
set -e

# Read values from HA options.json
COMPANION_MODE=$(jq -r '.COMPANION_MODE' /data/options.json)
PRINTER_IP=$(jq -r '.PRINTER_IP' /data/options.json)
ACCESS_CODE=$(jq -r '.ACCESS_CODE' /data/options.json)
SERIAL_NUMBER=$(jq -r '.SERIAL_NUMBER' /data/options.json)

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Export for child process
export COMPANION_MODE
export PRINTER_IP
export ACCESS_CODE
export SERIAL_NUMBER

# Run upstream entrypoint
exec /entrypoint.sh
