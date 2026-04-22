#include "rgb_led.h"
#include <Arduino.h>

void initRGB() {
    pinMode(8, OUTPUT);
}

void setRGB(int r, int g, int b) {
    // placeholder logic
    Serial.print("RGB:");
    Serial.print(r); Serial.print(",");
    Serial.print(g); Serial.print(",");
    Serial.println(b);
}