#ifndef OLED_H
#define OLED_H

void initOLED();
void displayText(const char* text);
void updateOLED(float v, float c, float p);

#endif