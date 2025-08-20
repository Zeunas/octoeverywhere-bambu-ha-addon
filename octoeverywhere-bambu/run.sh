#!/usr/bin/env bashio
set -e

# Export user-provided options as environment variables
export COMPANION_MODE=$(bashio::config 'COMPANION_MODE')
export ACCESS_CODE=$(bashio::config 'ACCESS_CODE')
export SERIAL_NUMBER=$(bashio::config 'SERIAL_NUMBER')
export PRINTER_IP=$(bashio::config 'PRINTER_IP')

echo "=============== OctoEverywhere Environment ==============="
echo "COMPANION_MODE=$COMPANION_MODE"
echo "ACCESS_CODE=$ACCESS_CODE"
echo "SERIAL_NUMBER=$SERIAL_NUMBER"
echo "PRINTER_IP=$PRINTER_IP"
echo "=========================================================="

# Create data dir
mkdir -p /data

# Hand off to OctoEverywhere entrypoint
exec /entrypoint.sh
