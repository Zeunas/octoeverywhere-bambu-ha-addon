#!/usr/bin/env bashio
set -e

# Export environment variables exactly as OctoEverywhere expects
export COMPANION_MODE="$(bashio::config 'COMPANION_MODE')"
export PRINTER_IP="$(bashio::config 'PRINTER_IP')"
export ACCESS_CODE="$(bashio::config 'ACCESS_CODE')"
export SERIAL_NUMBER="$(bashio::config 'SERIAL_NUMBER')"

echo "Starting OctoEverywhere for printer at $PRINTER_IP..."

# Run the OctoEverywhere entrypoint
exec /entrypoint.sh
