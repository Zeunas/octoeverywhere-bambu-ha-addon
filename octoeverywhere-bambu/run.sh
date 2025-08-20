#!/usr/bin/env bash
set -e

echo "[INFO] Starting OctoEverywhere Companion..."
docker run \
  --rm \
  --name octoeverywhere_companion \
  -e COMPANION_MODE="${COMPANION_MODE}" \
  -e ACCESS_CODE="${ACCESS_CODE}" \
  -e SERIAL_NUMBER="${SERIAL_NUMBER}" \
  -e PRINTER_IP="${PRINTER_IP}" \
  -v /config/octoeverywhere:/data \
  octoeverywhere/octoeverywhere:latest
