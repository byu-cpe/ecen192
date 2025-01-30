---
title: "Multimeters & Measurements"
number: 4
layout: lab
---

<!-- 
NOTICE: THIS PAGE USES DYNAMIC FIGURE NUMBERS.
all your images should following this format:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% raw %}{% link /assets/labname/imagename.jpg %}{% endraw %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> INSERT A CAPTION</figcaption>
</figure>

NOTES:
  - Notice the <strong> tags are empty in the <figcaption> block. The script uses these to handle the nametags.
  - If you want to copy and past the shape above, you may, but remove the {% raw %} {% endraw%} tags in the <img src> block.
-->

## Overview
In this lab we will be using some tools you are likely already familiar with to measure DC voltage, DC current, and resistance. Now that you know how to create and operate circuits using breadboards, it's time to learn how to use multimeters.  

## Background/Preparation

### Introduction to Ohm’s Law

<p align = "center">
</p>
<p style="padding: 0px; background-color: white; width: 350px; height: 100px; place-items: center; margin: auto; font-size: 30px;">
  $$ I = \frac{V}{R} ~~ or ~~ V = IR $$
</p>

We often compare this law to water in pipes.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/WaterAnalogy.png %}">
  <figcaption style="text-align: center;"><strong></strong> Ohm's Law Water Analogy </a>
  </figcaption>
</figure>

- Voltage is the pressure of the water in the pipe - higher pressure pushes more water down the pipe.
- The resistance is the size of the pipe - a larger pipe allows for easier water flow through the pipe. 
- The current of the pipe is the actual amount of water flowing through any given cross section of the pipe.


| Variable   | Unit   | Symbol |
| ---------- | ------ | ------ |
| Current    | Ampere | **A**  |
| Voltage    | Volts  | **V**  |
| Resistance | Ohms   | **Ω**  |

### Introduction to Multimeters

Most multimeters can measure DC voltage, AC voltage, DC current, resistance, can perform diode tests, and can measure battery resistance. 

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/Multimeter.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong><br>
1. LCD display<br>
2. “FUNC” Push button<br>
3. “BACK LIGHT” push button and ‘HOLD” push button<br>
4. Rotary Switch (Knob)<br>
5. “V/Ω/HZ/uA/mA”Input terminal<br>
6. “COM” input terminal<br>
7. “10A” input terminal<br>
Image credit: Neoteck User Manual</figcaption>
</figure>

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/MultimeterExample1.jpg %}" style="display: block; margin: auto;">
    <figcaption style="text-align: center;"><strong></strong> Measure Resistance </figcaption>
</figure>
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/MultimeterExample2.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Measure Voltage with Probes </figcaption>
</figure>
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/Multimeterexample3.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Make sure it is on the Right Setting </figcaption>
</figure>

**Warning: Before you use a multimeter, you need to know what values you expect to encounter and select the appropriate scale. Failure to do so can overload the multimeter and may even cause a short circuit, which can be dangerous to you, and permanently damaging to both the circuit and the multimeter.**

## Equipment and Materials

- Multimeter

- Led (1) (Any color)

- Potentiometer (1) (23 kΩ)

- Resistors: 250 Ω, 360 Ω, 750 Ω, 10 kΩ, 5 kΩ, 68 kΩ,

- Jumper Wires (10)

- Breadboards (1) 

- 9V battery (1) (6A)

- Alligator clips (2)

- Temperature Sensor (1)

- Battery Screw Terminal (1)

## Procedure

### Resistance

**Remember:** Make sure you have the multimeter to measure resistance (Ω symbol)

- Grab some resistors from the red bag

- Read their color codes to figure out their resistance

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/resistance_reader_chart.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Resistance reader chart.  <br> Image Credit: Digi-Key Electronics </figcaption>
</figure>

- Check with the online calculator ( <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Resistance Calculator</a> )

- Confirm by measuring with the multimeter

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/MultimeterExample1.jpg %}" style="display: block; margin: auto;">
    <figcaption style="text-align: center;"><strong></strong> Measure Resistance </figcaption>
</figure>

### Voltage

**Note:** Make sure you have set the multimeter in the right setting to measure DC voltage (V symbol).

- Build the circuit

- Connect the multimeter

- Measure how the voltage potential across the LED

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/MeasureVoltageSch1.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Schematic for Measuring Voltage </figcaption>
</figure>

This circuit uses a potentiometer that changes resistance based on how much it is turned.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/Potentiometer.jpg%}" width="170" style="display: block; margin: auto;">
  <img src="{% link assets/03_multimeters_measurements/potentiometer_overview.gif %}" width="500" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A potentiometer and an overview of the pinout of a potntiometer.  <br>
Image Credit:<a href = "https://www.elexp.com/products/18sts200pot-cermet-w-shaft-200" target = "_blank">Electronix Express.</a> (potentiometer) and <a href = "https://makeabilitylab.github.io/physcomp/arduino/potentiometers.html#how-does-a-potentiometer-work" target = "_blank">Physical Computing and Craft Technologies, University of Washington.</a> (potentiometer pinout)
</figcaption>
</figure>

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/MeasureVoltageSch2.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Schematic for Measuring Voltage with Potentiometer </figcaption>
</figure>

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/MeasureVoltageSch2.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Board Example of Measuring Voltage </figcaption>
</figure>

### Measure Varying Voltage

We will be using a temperature sensor for this lab; a temperature sensor contains a resistor that changes its resistance with temperature.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/Thermistor.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Thermistor </figcaption>
</figure>

- Breadboard the circuit

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/ThermistorCircuitSch.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Thermistor Circuit Schematic </figcaption>
</figure>

- Connect the multimeter

- Measure voltage

- Pinching the temperature sensor with your fingers will increase its temperature, causing the voltage to change.

- Observe how the voltage changes as you pinch the temperature sensor with your fingers


### Current

**Note:** Make sure you have set the multimeter in the right setting to measusre DC current (A symbol).

- Build the circuit

- Connect the multimeter

- Measure the current
  - Google what current should typically pass through an LED

- Adjust the potentiometer and observe how the current changes


<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/CurrentCircuit1.png %}" style="display: block; margin: auto;">
</figure>

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/CurrentCircuit2.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Circuit Schematic for Measuring Current </figcaption>
</figure>
