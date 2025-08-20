# OctoEverywhere Bambu HA Add-on

This Home Assistant OS add-on wraps the OctoEverywhere Bambu Companion Docker container. It allows you to run OctoEverywhere inside HAOS for remote access and monitoring of your Bambu 3D printer.

## Features
- Simple setup for Bambu Connect printers
- Managed by Home Assistant Supervisor
- Automatic injection of printer IP, access code, and serial number

## Configuration
Set the following options in the add-on configuration:

- `PRINTER_IP`: IP address of your Bambu printer
- `ACCESS_CODE`: Your Bambu Connect access code
- `SERIAL_NUMBER`: Serial number of your printer

## Usage
1. Install the add-on via HAOS Add-on Store (local or repository).
2. Configure the options above.
3. Start the add-on and check logs for the OctoEverywhere pairing link.
