#!/usr/bin/env bash
exec /entrypoint.sh \
  --mode "${COMPANION_MODE}" \
  --ip "${PRINTER_IP}" \
  --access "${ACCESS_CODE}" \
  --serial "${SERIAL_NUMBER}"
