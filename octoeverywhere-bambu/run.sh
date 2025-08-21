#!/usr/bin/env bash
set -e

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Export explicitly so child processes see them
export COMPANION_MODE
export PRINTER_IP
export ACCESS_CODE
export SERIAL_NUMBER

# Make sure data directory exists
mkdir -p /data

# Run upstream entrypoint
exec /entrypoint.sh
