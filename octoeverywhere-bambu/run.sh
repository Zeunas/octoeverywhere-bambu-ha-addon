#!/usr/bin/env bashio
set -e

# Export user-provided options as environment variables
COMPANION_MODE=$(bashio::config 'COMPANION_MODE')
ACCESS_CODE=$(bashio::config 'ACCESS_CODE')
SERIAL_NUMBER=$(bashio::config 'SERIAL_NUMBER')
PRINTER_IP=$(bashio::config 'PRINTER_IP')

echo "=============== OctoEverywhere Environment ==============="
echo "COMPANION_MODE=$COMPANION_MODE"
echo "ACCESS_CODE=$ACCESS_CODE"
echo "SERIAL_NUMBER=$SERIAL_NUMBER"
echo "PRINTER_IP=$PRINTER_IP"
echo "=========================================================="

mkdir -p /data

# Run OctoEverywhere with injected env vars
exec env \
  COMPANION_MODE="$COMPANION_MODE" \
  ACCESS_CODE="$ACCESS_CODE" \
  SERIAL_NUMBER="$SERIAL_NUMBER" \
  PRINTER_IP="$PRINTER_IP" \
  /entrypoint.sh
