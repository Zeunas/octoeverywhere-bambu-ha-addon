#!/usr/bin/with-contenv bashio
echo "Starting OctoEverywhere in Bambu Connect mode..."

exec /app/octoeverywhere/bin/octoeverywhere \
    --mode "bambu" \
    --ip "$(bashio::config 'PRINTER_IP')" \
    --access "$(bashio::config 'ACCESS_CODE')" \
    --serial "$(bashio::config 'SERIAL_NUMBER')"
