#!/usr/bin/env bashio
# OctoEverywhere Bambu Add-on - Multi-printer support

export COMPANION_MODE="bambu"

# Function to start one OctoEverywhere instance
start_printer() {
  local printer_ip=$1
  local access_code=$2
  local serial=$3
  local printer_name=$4

  if [ -n "$printer_ip" ]; then
    echo "Starting OctoEverywhere for $printer_name..."
    /entrypoint.sh \
      --mode "$COMPANION_MODE" \
      --ip "$printer_ip" \
      --access "$access_code" \
      --serial "$serial" &
  fi
}

# Start Printer 1
start_printer "$(bashio::config 'PRINTER1_IP')" \
              "$(bashio::config 'PRINTER1_ACCESS_CODE')" \
              "$(bashio::config 'PRINTER1_SERIAL_NUMBER')" \
              "Printer1"

# Start Printer 2
start_printer "$(bashio::config 'PRINTER2_IP')" \
              "$(bashio::config 'PRINTER2_ACCESS_CODE')" \
              "$(bashio::config 'PRINTER2_SERIAL_NUMBER')" \
              "Printer2"

# Wait to keep the container alive
wait
