#!/usr/bin/env bashio
set -e

# Export environment variables exactly as docker-compose expects
export COMPANION_MODE=$(bashio::config 'COMPANION_MODE')
export PRINTER_IP=$(bashio::config 'PRINTER_IP')
export ACCESS_CODE=$(bashio::config 'ACCESS_CODE')
export SERIAL_NUMBER=$(bashio::config 'SERIAL_NUMBER')

echo "================ DEBUG ENVIRONMENT ================="
echo "COMPANION_MODE: $COMPANION_MODE"
echo "PRINTER_IP:     $PRINTER_IP"
echo "ACCESS_CODE:    $ACCESS_CODE"
echo "SERIAL_NUMBER:  $SERIAL_NUMBER"
echo "===================================================="

# Start OctoEverywhere
exec /entrypoint.sh
