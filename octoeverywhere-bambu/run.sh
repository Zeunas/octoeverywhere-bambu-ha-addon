#!/usr/bin/env bash
set -e

# Read config directly from Home Assistant options.json
CONFIG_PATH=/data/options.json

COMPANION_MODE=$(jq -r '.COMPANION_MODE' $CONFIG_PATH)
ACCESS_CODE=$(jq -r '.ACCESS_CODE' $CONFIG_PATH)
SERIAL_NUMBER=$(jq -r '.SERIAL_NUMBER' $CONFIG_PATH)
PRINTER_IP=$(jq -r '.PRINTER_IP' $CONFIG_PATH)

echo "=============== OctoEverywhere Environment ==============="
echo "COMPANION_MODE=$COMPANION_MODE"
echo "ACCESS_CODE=$ACCESS_CODE"
echo "SERIAL_NUMBER=$SERIAL_NUMBER"
echo "PRINTER_IP=$PRINTER_IP"
echo "=========================================================="

mkdir -p /data

# Inject vars and start OctoEverywhere
exec env \
  COMPANION_MODE="$COMPANION_MODE" \
  ACCESS_CODE="$ACCESS_CODE" \
  SERIAL_NUMBER="$SERIAL_NUMBER" \
  PRINTER_IP="$PRINTER_IP" \
  /entrypoint.sh
