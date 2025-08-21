#!/usr/bin/env bash
# Exit on any error
set -e

# Load options from HA Supervisor add-on configuration
COMPANION_MODE="${COMPANION_MODE:-bambu}"
PRINTER_IP="${PRINTER_IP:-}"
ACCESS_CODE="${ACCESS_CODE:-}"
SERIAL_NUMBER="${SERIAL_NUMBER:-}"

# Print environment for debugging
echo "=============== OctoEverywhere ENV ==============="
echo "COMPANION_MODE=${COMPANION_MODE}"
echo "PRINTER_IP=${PRINTER_IP}"
echo "ACCESS_CODE=${ACCESS_CODE}"
echo "SERIAL_NUMBER=${SERIAL_NUMBER}"
echo "=================================================="

# Check that required variables are set
if [[ -z "${PRINTER_IP}" || -z "${ACCESS_CODE}" || -z "${SERIAL_NUMBER}" ]]; then
  echo "ERROR: Missing required environment variables!"
  exit 1
fi

# Run the OctoEverywhere entrypoint with the HA options
exec /entrypoint.sh \
  --mode "${COMPANION_MODE}" \
  --ip "${PRINTER_IP}" \
  --access "${ACCESS_CODE}" \
  --serial "${SERIAL_NUMBER}"
