#!/usr/bin/env bashio
set -e

# Load HAOS options into environment variables
export COMPANION_MODE="$(bashio::config 'COMPANION_MODE')"
export PRINTER_IP="$(bashio::config 'PRINTER_IP')"
export ACCESS_CODE="$(bashio::config 'ACCESS_CODE')"
export SERIAL_NUMBER="$(bashio::config 'SERIAL_NUMBER')"

# Debug output
echo "================ DEBUG ENVIRONMENT ================="
echo "COMPANION_MODE: $COMPANION_MODE"
echo "PRINTER_IP:     $PRINTER_IP"
echo "ACCESS_CODE:    $ACCESS_CODE"
echo "SERIAL_NUMBER:  $SERIAL_NUMBER"
echo "===================================================="

# Ensure required variables are not empty
if [ -z "$SERIAL_NUMBER" ] || [ -z "$PRINTER_IP" ] || [ -z "$ACCESS_CODE" ]; then
    echo "ERROR: One or more required variables are missing. Please check the add-on configuration."
    exit 1
fi

echo "Starting OctoEverywhere for printer at $PRINTER_IP..."

# Start OctoEverywhere
exec /entrypoint.sh
