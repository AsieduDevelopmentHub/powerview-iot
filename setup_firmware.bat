@echo off

REM =========================
REM Create folders (safe)
REM =========================
mkdir firmware\include 2>nul
mkdir firmware\lib 2>nul
mkdir firmware\src\sensors 2>nul
mkdir firmware\src\network 2>nul
mkdir firmware\src\control 2>nul
mkdir firmware\src\ui 2>nul
mkdir firmware\src\security 2>nul
mkdir firmware\test 2>nul

REM =========================
REM Create root files
REM =========================
if not exist firmware\platformio.ini type nul > firmware\platformio.ini
if not exist firmware\README.md type nul > firmware\README.md

REM =========================
REM Include files
REM =========================
if not exist firmware\include\config.h type nul > firmware\include\config.h

REM =========================
REM Main source
REM =========================
if not exist firmware\src\main.cpp type nul > firmware\src\main.cpp

REM =========================
REM Sensors
REM =========================
if not exist firmware\src\sensors\pzem.cpp type nul > firmware\src\sensors\pzem.cpp
if not exist firmware\src\sensors\pzem.h type nul > firmware\src\sensors\pzem.h
if not exist firmware\src\sensors\acs712.cpp type nul > firmware\src\sensors\acs712.cpp
if not exist firmware\src\sensors\acs712.h type nul > firmware\src\sensors\acs712.h

REM =========================
REM Network
REM =========================
if not exist firmware\src\network\wifi_manager.cpp type nul > firmware\src\network\wifi_manager.cpp
if not exist firmware\src\network\wifi_manager.h type nul > firmware\src\network\wifi_manager.h
if not exist firmware\src\network\api_client.cpp type nul > firmware\src\network\api_client.cpp
if not exist firmware\src\network\api_client.h type nul > firmware\src\network\api_client.h

REM =========================
REM Control
REM =========================
if not exist firmware\src\control\relay.cpp type nul > firmware\src\control\relay.cpp
if not exist firmware\src\control\relay.h type nul > firmware\src\control\relay.h

REM =========================
REM UI
REM =========================
if not exist firmware\src\ui\oled.cpp type nul > firmware\src\ui\oled.cpp
if not exist firmware\src\ui\oled.h type nul > firmware\src\ui\oled.h
if not exist firmware\src\ui\rgb_led.cpp type nul > firmware\src\ui\rgb_led.cpp
if not exist firmware\src\ui\rgb_led.h type nul > firmware\src\ui\rgb_led.h

REM =========================
REM Security
REM =========================
if not exist firmware\src\security\auth.cpp type nul > firmware\src\security\auth.cpp
if not exist firmware\src\security\auth.h type nul > firmware\src\security\auth.h

REM =========================
REM Test
REM =========================
if not exist firmware\test\test_main.cpp type nul > firmware\test\test_main.cpp

echo Structure created successfully (existing files skipped).
pause