#include "oled.h"
#include <Arduino.h>

void initOLED() {
    Serial.println("OLED Init");
}

void displayText(const char* text) {
    Serial.println(text);
}

void updateOLED(float v, float c, float p) {
    Serial.print("V:");
    Serial.print(v);
    Serial.print(" C:");
    Serial.print(c);
    Serial.print(" P:");
    Serial.println(p);
}