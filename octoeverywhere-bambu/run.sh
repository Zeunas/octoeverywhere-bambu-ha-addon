#!/bin/sh
set -e

CONFIG=/data/options.json

COMPANION_MODE=$(jq -r '.COMPANION_MODE' "$CONFIG")
PRINTER_IP=$(jq -r '.PRINTER_IP' "$CONFIG")
ACCESS_CODE=$(jq -r '.ACCESS_CODE' "$CONFIG")
SERIAL_NUMBER=$(jq -r '.SERIAL_NUMBER' "$CONFIG")

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=$COMPANION_MODE"
echo "PRINTER_IP=$PRINTER_IP"
echo "ACCESS_CODE=$ACCESS_CODE"
echo "SERIAL_NUMBER=$SERIAL_NUMBER"
echo "=================================================="

mkdir -p /data

# Just re-exec the container's *original* command,
# but inject the required env vars
exec env \
  COMPANION_MODE="$COMPANION_MODE" \
  PRINTER_IP="$PRINTER_IP" \
  ACCESS_CODE="$ACCESS_CODE" \
  SERIAL_NUMBER="$SERIAL_NUMBER" \
  "$@"
