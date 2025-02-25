---
title: "Sensors & Motors"
number: 5
layout: lab
---

<!-- There is no dynamic figures script on this page, as there are no elements. If you add elements, please go to another page and copy the notice and script at the top and bottom of the page, to keep the formatting of figures consistent. -->

## Overview

This lab covers motors, sensors, and actuators. You will be building 3 different circuits using a fan motor. 

## Procedure

### Basic Setup

We will want to tape our motor to the table. This is to prevent the fan from moving around randomly when it is on. 

### Circuit 1 Switch Controlled Fan

For this Circuit we need our battery, motor, and a switch.

Follow the circuit diagram below:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/04_motors_actuators/SwitchFanSchem.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Switch Circuit Schematic </figcaption>
</figure>


### Circuit 2 Light Sensor Controlled Fan

For this Circuit we need our battery, motor, transistor, photoresistor, and resistor about 6.8kOhms.

Follow the circuit diagram below:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/04_motors_actuators/PhotoFanSchem.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Light Sensor Circuit Schematic </figcaption>
</figure>

Here’s one way you could configure this circuit. 
<span style="color: red;">WARNING!</span> If connected incorrectly, the transistor can get **REALLY** hot and burn your finger, so please be carful!

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/04_motors_actuators/PhotoFanBoard.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Light Sensor Circuit </figcaption>
</figure>

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/04_motors_actuators/HowPhotoWorks.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> How the Photoresistor Works </figcaption>
</figure>

### Circuit 3 Potentiometer Controlled Fan

For this Circuit we need our battery, motor, switch, and potentiometer.

Follow the circuit diagram below:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/04_motors_actuators/PotentiometerSchem.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Potentiometer + Fan Circuit </figcaption>
</figure>

**Note:** The Red lines on the switch and potentiometer do not need to be connected to anything. They will be floating nodes.
