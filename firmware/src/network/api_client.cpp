#include "api_client.h"
#include <Arduino.h>

void sendTelemetry(float v, float c, float p) {
    Serial.print("Sending -> V:");
    Serial.print(v);
    Serial.print(" C:");
    Serial.print(c);
    Serial.print(" P:");
    Serial.println(p);

    // TODO: HTTPS POST to backend
}