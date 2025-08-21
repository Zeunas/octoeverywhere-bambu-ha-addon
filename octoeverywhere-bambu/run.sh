#!/usr/bin/env bash

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Start the OctoEverywhere container with provided environment variables
exec docker run --rm \
  -e COMPANION_MODE="${COMPANION_MODE}" \
  -e PRINTER_IP="${PRINTER_IP}" \
  -e ACCESS_CODE="${ACCESS_CODE}" \
  -e SERIAL_NUMBER="${SERIAL_NUMBER}" \
  -v /data:/data \
  octoeverywhere/octoeverywhere:latest
