#include <Arduino.h>
#include "config.h"

#include "ui/oled.h"
#include "ui/rgb_led.h"

#include "network/wifi_manager.h"
#include "network/api_client.h"

#include "sensors/pzem.h"
#include "sensors/acs712.h"

#include "control/relay.h"

void setup() {
    Serial.begin(115200);

    initRGB();
    setRGB(0, 0, 255); // Blue = boot

    initOLED();
    displayText("PowerView Booting...");

    initWiFi();

    initRelay();

    initPZEM();
    initACS712();

    displayText("PowerView Ready");
    setRGB(0, 255, 0); // Green = ready
}

void loop() {

    float voltage = readVoltage();
    float current = readCurrent();
    float power = voltage * current;

    updateOLED(voltage, current, power);

    sendTelemetry(voltage, current, power);

    handleRelayCommands();

    delay(2000);
}