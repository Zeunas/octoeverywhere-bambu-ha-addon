#!/usr/bin/env bash

# Load HA options
CONFIG_FILE="/data/options.json"

COMPANION_MODE=$(jq -r '.COMPANION_MODE' "$CONFIG_FILE")
PRINTER_IP=$(jq -r '.PRINTER_IP' "$CONFIG_FILE")
ACCESS_CODE=$(jq -r '.ACCESS_CODE' "$CONFIG_FILE")
SERIAL_NUMBER=$(jq -r '.SERIAL_NUMBER' "$CONFIG_FILE")

echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=$COMPANION_MODE"
echo "PRINTER_IP=$PRINTER_IP"
echo "ACCESS_CODE=$ACCESS_CODE"
echo "SERIAL_NUMBER=$SERIAL_NUMBER"
echo "=================================================="

# Run the upstream container as a subprocess
exec docker run --rm \
  -e COMPANION_MODE="$COMPANION_MODE" \
  -e PRINTER_IP="$PRINTER_IP" \
  -e ACCESS_CODE="$ACCESS_CODE" \
  -e SERIAL_NUMBER="$SERIAL_NUMBER" \
  -v /data:/data \
  octoeverywhere/octoeverywhere:latest
