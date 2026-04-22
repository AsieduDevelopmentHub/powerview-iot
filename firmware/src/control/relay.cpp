#include "relay.h"
#include <Arduino.h>

#define RELAY_PIN 3

void initRelay() {
    pinMode(RELAY_PIN, OUTPUT);
    digitalWrite(RELAY_PIN, LOW);
}

void handleRelayCommands() {
    // TODO: backend command polling
}