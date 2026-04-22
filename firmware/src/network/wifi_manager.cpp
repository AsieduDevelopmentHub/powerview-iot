#include <WiFi.h>
#include "wifi_manager.h"
#include "config.h"

void initWiFi() {
    WiFi.begin("your_ssid", "your_password");

    int timeout = 0;

    while (WiFi.status() != WL_CONNECTED && timeout < 20) {
        delay(500);
        Serial.println("Connecting WiFi...");
        timeout++;
    }

    if (WiFi.status() == WL_CONNECTED) {
        Serial.println("WiFi Connected");
    } else {
        Serial.println("Starting AP Mode");
        WiFi.softAP(AP_NAME);
    }
}