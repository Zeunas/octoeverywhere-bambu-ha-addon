#!/usr/bin/env bashio
# Run OctoEverywhere Bambu for a single printer

set -e

# Export environment variables from HAOS options
export COMPANION_MODE="$(bashio::config 'COMPANION_MODE')"
export PRINTER_IP="$(bashio::config 'PRINTER_IP')"
export ACCESS_CODE="$(bashio::config 'ACCESS_CODE')"
export SERIAL_NUMBER="$(bashio::config 'SERIAL_NUMBER')"

echo "Starting OctoEverywhere for printer at $PRINTER_IP..."

# Run the OctoEverywhere container entrypoint
exec /entrypoint.sh \
    --mode "$COMPANION_MODE" \
    --ip "$PRINTER_IP" \
    --access "$ACCESS_CODE" \
    --serial "$SERIAL_NUMBER"
