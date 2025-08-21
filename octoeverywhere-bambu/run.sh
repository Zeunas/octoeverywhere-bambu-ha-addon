#!/usr/bin/with-contenv bashio
echo "Starting OctoEverywhere Bambu Connect..."
exec docker run \
  --rm \
  -e COMPANION_MODE=bambu \
  -e ACCESS_CODE="${ACCESS_CODE}" \
  -e SERIAL_NUMBER="${SERIAL_NUMBER}" \
  -e PRINTER_IP="${PRINTER_IP}" \
  -v "$(pwd)/data:/data" \
  octoeverywhere/octoeverywhere:latest
