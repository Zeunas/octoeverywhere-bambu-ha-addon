#!/usr/bin/env bashio

# Read addon options
COMPANION_MODE=$(bashio::config 'COMPANION_MODE')
PRINTER_IP=$(bashio::config 'PRINTER_IP')
ACCESS_CODE=$(bashio::config 'ACCESS_CODE')
SERIAL_NUMBER=$(bashio::config 'SERIAL_NUMBER')

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=$COMPANION_MODE"
echo "PRINTER_IP=$PRINTER_IP"
echo "ACCESS_CODE=$ACCESS_CODE"
echo "SERIAL_NUMBER=$SERIAL_NUMBER"
echo "=================================================="

# Execute the upstream OctoEverywhere entrypoint
exec /entrypoint.sh \
  --mode "${COMPANION_MODE}" \
  --ip "${PRINTER_IP}" \
  --access "${ACCESS_CODE}" \
  --serial "${SERIAL_NUMBER}"
