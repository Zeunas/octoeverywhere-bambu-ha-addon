#!/usr/bin/with-contenv bash
set -e

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Exec into the upstream entrypoint
exec /entrypoint.sh
