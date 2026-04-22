# PowerView Firmware

This firmware runs on ESP32-C3 and powers the Smart Energy Socket system.

## Features
- Energy monitoring (PZEM + ACS712)
- Relay control (remote ON/OFF)
- OLED display (real-time stats)
- RGB status indicator
- WiFi provisioning (AP mode)
- Secure HTTPS API communication

## Architecture
- Sensors Layer
- Network Layer
- Control Layer
- UI Layer
- Security Layer

## Build Tool
PlatformIO (VS Code recommended)

## Deployment
Upload via USB using PlatformIO upload command.