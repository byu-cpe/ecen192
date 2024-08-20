---
title: Y-Board Accelerometer & GPIO
number: 8
layout: lab
---


## Overview
This lab is about reading data off an accelerometer and sending that information to an off-board device using the GPIO pins. In this case, we are sending the data to a small OLED screen that displays how much acceleration the board is experiencing in real time in 3 dimensional space.

<!-- Put "oled_accel.jpg" here -->
<p align = "center">
<img src="{% link /assets/accel_gpio/oled_accel.jpg %}" width="250"/>
</p>

## Background/Preparation
An accelerometer (“acceler-“ and “-meter”) is a circuit chip that measures the acceleration that chip experiences (from the inside). The gist of how one works is that there is a very small, delicate spring inside of the chip that also acts as part of a circuit. As that spring compresses or relaxes, the properties of the circuit change in a way that can be revealed by measuring the voltage in the circuit.

<!-- Put "accel_mems.png" alongside "accel_chip.png" here -->
<p align = "center">
<img src="{% link /assets/accel_gpio/accel_mems.png %}" width="250"/>
</p>

“GPIO” stands for general purpose input & output. From an engineer’s perspective, GPIO pins are pins that the engineer can program to do pretty much whatever he/she wants. They’re pins that don’t have a predetermined purpose, allowing the engineer flexibility to incorporate and interface with new components to meet his/her project-specific needs.

The GPIO pins on your Y-board are found on the back. While there are six pins, only three of them are actually GPIO. This is because three of them are reserved as 5V, 3.3V, and GND. Two of the GPIO pins can additionally support a communication named I2C. We rely on those pins’ support of that protocol in order to send data from the accelerometer to the off-board OLED display.

<!-- Put "gpio.png" here -->
<p align = "center">
<img src="{% link /assets/accel_gpio/gpio.png %}" width="250"/>
</p>

## Equipment and Materials
- (1) Y-board
- (1) OLED display
- (4) Jumper wires
- (1) Breadboard (if you prefer)
- (1) USB data cable

## Procedure
### Step 1: Hardware Setup
1.	Plug your 4 jumper wires into the OLED screen
<!-- Put "oled.jpg" and "oled_i2c.jpg" here -->
<p align = "center">
<img src="{% link /assets/accel_gpio/oled_i2c.jpg %}" width="250"/>
</p>
 
2.	Plug other side of those jumpers into the proper GPIO Pins (see key below)
<!-- Put "i2c_label.png" here -->
<p align = "center">
<img src="{% link /assets/accel_gpio/i2c_label.png %}" width="250"/>
</p>
If you used the same colors as I did in (FILL IN THE BLANK), you should have the following:
<!-- Put "i2c_connection.jpg" here -->
<p align = "center">
<img src="{% link /assets/accel_gpio/i2c_connection.jpg %}" width="250"/>
</p>

### Step 2: Software Setup
1. Open VS Code
2. Open a new VS Code window that doesn't already have a project open (hotkey: Ctrl+Shift+N)
3. Click on the "Source Control" button on the lefthand bar of VSCode (hotkey: Ctrl+Shift+G)
4. Enter this URL: https://github.com/byu-ecen-192/y-board-accelerometer-gpio.git
5. Choose a destination to save the lab files at
6. Once you've opened the platformio project, build the project (hotkey: Ctrl+Alt+B)
7. Upload the build to the Y-Board (hotkey: Ctrl+Alt+U)
 
### Step 3: Tinker
Try out something cool yourself! I’ll list a few ideas below.
1.	Change the text at the top of the OLED (easy)
2.	Draw new shapes on the OLED (easy)
3.	Use the accelerometer data to tune the brightness of an LED (medium)
4.	Use each of the 3 axes of data to scale the brightness of red, green, and blue independently on an LED (medium)
5.	Connect the potentiometer to control the rotation of the 3D axis (hard)
6.	Program the buttons and/or switches to redefine which directions are ‘x’, ‘y’, and ‘z’ (hard)
7.	Reprogram the magnitude vector to display each component vector (hard)

## Post-Lab Work (Optional)
If you have a pair, slap some sunglasses on your face a take an epic selfie with your cool lab. Feel free to post on social media or share with your friends. #byuecen

## Rubric/Submission
Go to LearningSuite and submit your attendance and feedback for this lab