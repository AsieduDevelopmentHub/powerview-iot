#include <HTTPClient.h>
#include <WiFi.h>
#include <Arduino.h>

void sendTelemetry(float v, float c, float p)
{
    if (WiFi.status() == WL_CONNECTED)
    {
        HTTPClient http;

        http.begin("http://192.168.1.202:8000/api/v1/energy/ingest");
        http.addHeader("Content-Type", "application/json");

        String json = "{";
        json += "\"device_id\":\"POWERVIEW-001\",";
        json += "\"voltage\":" + String(v) + ",";
        json += "\"current\":" + String(c) + ",";
        json += "\"power\":" + String(p) + ",";
        json += "\"energy_kwh\":0.52";
        json += "}";

        int responseCode = http.POST(json);

        Serial.print("Response Code: ");
        Serial.println(responseCode);

        http.end();
    }
}