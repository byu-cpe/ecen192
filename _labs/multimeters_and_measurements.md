---
title: Multimeters & Measurements
number: 1
layout: lab
---

## Overview
In this lab we will be using the tools we know and measure DC voltage, DC current, and resistance. You will learn how to operate circuits using breadboards and how to use multimeters.  

## Background/Preparation <br>

### 🔍 Introduction to Ohm’s Law: 

Ohm’s Law is a fundamental concept in electricity and electronics. 🤓

**Definition:** It states that the current flowing through a conductor (anything that allows electricity to flow through it) between two points is directly proportional to the voltage across the two points, and inversely proportional to the resistance between them. Written as: <br>
<p  align = "center">
 
</p>
<p style="border: 2.5px double red; padding: 0px; background-color: white;  width: 85px;  height: 70px; place-items: center; margin: auto;" >
 $$ I = \frac{V}{R} $$
</p>

Where $ I $ is current, $ V $ is voltage and $ R $ is resistance.

Think of it like a water pipe: current is the water flowing, voltage is the water pressure, and resistance is the pipe width. So if we increase the voltage (water pressure in the pipe) then the current (water flow) through the circuit will increase. Similarly, if we increase the resistance (width of the pipe) the amount of current flow (water flow) will reduce making it harder for water to flow easily. (Amperage here means current)
<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/water-analogy.png %}" width="500"/>
<br>
Figure 1. This image is a depiction of the water-analogy. <br>
<span style="font-size: 10px;">
Image credit: <a href="https://learn.sparkfun.com/tutorials/transistors/extending-the-water-analogy" target="_blank">Sparkfun </a> 
</span>
</p>

The circuit depicted below can be used to understand Ohm's Law. In each circuit, a voltage source controls the current flow, while a resistor prevents excessive current that could damage the LED or other components. Understanding the relationship between resistance and voltage is crucial for controlling current.
<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/Ohms_Law.png %}" width="500"/>
</p>

<p align = "center">
Figure 2. This image is a circuit depicting Ohms Law. <br>
<span style="font-size: 10px;">
(Image credit: <a href="https://www.grc.nasa.gov/www/k-12/airplane/ohms.html" target="_blank">Glenn Research Center, NASA)</a> 
</span>
</p>

<!-- ><a href="#-resistance">Resistance</a>  -->
<!-- <a href="#voltage">Voltage</a>  -->
<!-- <a href="#-current">Current</a>   -->



It seems like a lot to keep track of, so here is a table to summarize everything:
 

<table style="text-align: center; margin: 0 auto;">
  <thead>
    <tr>
      <th>Variable</th>
      <th>Unit</th>
      <th>Symbol</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Current ($I$)</td>
      <td>Amperes</td>
      <td><b>A</b></td>
    </tr>
    <tr>
      <td>Voltage ($V$)</td>
      <td>Volts</td>
      <td><b>V</b></td>
    </tr>
    <tr>
      <td>Resistance ($R$)</td>
      <td>Ohms</td>
      <td><b>Ω</b></td>
    </tr>
  </tbody>
</table>


###  🎛️ Introduction to Multimeters: 
A multimeter is a great tool to measure various electrical properties, and it can all be done with one machine! It saves us so much time and energy! 
A lot of the multimeters can measure DC voltage, AC voltage, DC current, Resistance, Diode tests and battery resistance. They have certain components that we need to know about first: 

<p align = "center">
<img src="{% link /assets/multimeters_and_measurements/multimeter.png %}" width="250"/> <br>
Figure 3. This image shows you the symbols and the quantities measured by multimeters and some important ports for measurement. <br>
<span style="font-size: 10px;">
Image credit: Neoteck User Manual 
</span>
</p>

These are labeled parts of the multimeter in Figure 3:
1. LCD display
2. “FUNC” Push button
3. “BACK LIGHT” push button and ‘HOLD” push button
4. Rotary Switch (Knob)
5. “V/Ω/HZ/uA/mA” Input terminal
6. “COM” input terminal
7. “10A” input terminal

<p align = "center">
<img src="{% link assets/multimeters_and_measurements/multimeter_symbols.png %}" width="500"/>
<br>
Figure 4. It's a table depicting the meaning of the symbols of the multimeter. <br>
<span style="font-size: 10px;">
Image credit: Neoteck User Manual
</span>
</p>

Here are some things to keep in mind when you work with the multimeter:

1. The **COM** pin is always connected to the ground, it is a common reference point in circuits, often considered zero voltage(black wire). 
2. The **VΩmA** port is connected to the positive, it is also referred to as a point of high voltage (red wire) of your source.  
30. We can turn the knob to measure the quantity of your choice like : Resistance, DC voltage, DC current, and AC voltage. 

Now that we know the basic components and have all the required information. 
Let’s see if we can measure these quantities discussed in Ohm’s Law.  

## Equipment and Materials
- Multimeter

- Led (5) (0.02A) (R, B, G, Purple, Orange, Yellow)

- Potentiometer (1) (23 kΩ)

- Buzzer (1) (R: 600 Ω)

- Resistors: 330 Ω, 770 Ω, 5.6 kΩ 68 kΩ, and any other given to them

- Jumper Wires (10)

- Breadboards (1) 

- 9V battery (1)

- Alligator clips (2)

- Analog Temperature Sensors (1) [TMP36 of LMT85]

- Battery Screw Terminal (1)

## Procedure

### 🛠️ Resistance: 

**Note:** Make sure you have the multimeter to measure resistance (Ω symbol)

**a) Read and Measure Resistance:** 
<!-- <ins>Step 1:</ins> to underline -->
<!-- <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Try it yourself!</a> -->

Step 1: **Measure the resistance and tolerance:** Choose a few resistors from your collection. We will be using the color code chart and this <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Resistance Calculator</a> to measure the resistance and the tolerance of each resistor you choose. Pay attention to the number of colored bands on each resistor to determine if it uses a 4-band or 5-band color code system. You can click the link to access the resistance calculator. Simply input the resistor's color bands to determine its resistance.



Step 2: **Measure the resistance:** Set the multimeter to measure resistance (Ω symbol). Use the alligator clips to connect to one end of the resistor, connect **Ground** (COM, black wire) to one end of the resistor and **Positive** (VΩmA, red wire) to the other end of the resistor.

You can also use this chart to manually measure the resistance on a resistor. You notice that there two options to choose from, your resistor can be 4-band or 5-band, in some rare cases it can be 6-bands. If we use the 4-band-color resistor given in image, the first band is green, so the number will be 5, the next one is blue, so the number will be 6, and then we have yellow which will be the multiplier, so it's 10k and the last band is the tolerance, which would be 5% above and below the resistance. The resistance of this resistor will be 56 kΩ with a tolerance of 5%.
<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/resistance_reader_chart.png %}" width="500" alt = "Image = 1"/>
<br>
Figure 5. Resistance reader chart.  <br>
<span style="font-size: 10px;">
Image Credit: <a href="https://www.digikey.com" target="_blank">Digi-Key Electronics</a>  
</span>
</p>


**b) Measure Varying Resistance:** <br>
We will be using a potentiometer here to measure varying resistance. Here is a simple GIF to show you how they work:

<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/Potentiometer.png%}" width="170" alt = "Image = 2"/>
<img src="{% link assets/multimeters_and_measurements/potentiometer_overview.gif %}" width="500" alt = "Image = 1"/>
<br>
Figure 6. A potentiometer and an overview of the pinout of a potentiometer.  <br>
<span style="font-size: 10px;">
Image Credit:<a href = "https://www.elexp.com/products/18sts200pot-cermet-w-shaft-200" target = "_blank">Electronix Express.</a> (potentiometer) and <a href = "https://makeabilitylab.github.io/physcomp/arduino/potentiometers.html#how-does-a-potentiometer-work" target = "_blank">Physical Computing and Craft Technologies, University of Washington.</a> (potentiometer pinout)
</span></p>
Have you ever adjusted the volume on a radio? By turning the knob, you control how loud the music plays. Potentiometers work similarly for electrical circuits!  They are like adjustable resistors that allow you to control the amount of resistance between two points in a circuit. Imagine a water pipe with a valve, as you open the valve wider (like turning the knob), more water flows (similar to more current flowing in a circuit with lower resistance). By moving a wiper inside the potentiometer, we can change the resistance between its terminals. Moving the wiper(knob) towards ground (black wire) reduced the resistance and moving to positive (red wire) increases the resistance thus, affecting the current flow in the circuit.

Step 1: **Make connections:** begin with taking a potentiometer and put it on a bread board as shown in Fig 7. Now connect the alligator clips (red and black) from the multimeter to the outer wires to the that were previously connected to the two pins. Observe the multimeter reading, now turn your wiper (knob) around, does your resistance change? 

<table style="margin: 0 auto;">
<tbody>
<tr>
<td style="text-align: center"> <img src="{% link assets/multimeters_and_measurements/potentiometer_measurement.jpg%}" width="250" alt = "Step 1" class="image"/></td>
<td style="text-align: center"><img src="{% link assets/multimeters_and_measurements/potentiometer_measurement_2.jpg%}" width="260" alt = "Step 2" class="image"/></td>
</tr>
<tr> <td style="text-align: center">Step 1</td> 
<td style="text-align: center">Step 2</td>  
</tr>
</tbody>
</table>
<p align = "center">
Figure 7. Connections for potentiometer resistance measurement.  <br>
</p>
Step 2: **Adjust connections:** Move the red wire from the outer pin to the middle of the potentiometer. Now, turn the wiper (knob). Does your resistance change? 

Now that we have explored these cool features if a potentiometer, we'll be using this property to change resistance using a potentiometer which in turn changes the current in our lab today!
 
### 🔋Voltage: 

**Note:** Make sure you have set the multimeter in the right setting to measure DC voltage (V symbol).

**a) Measure Voltage:** 

<table style="margin: 0 auto;">
<thead>
<tr>
<th style="text-align: center">Schematic</th>
<th style="text-align: center">Breadboard connections</th>
<th style="text-align: center">Alligator clips connection</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center"> <img src= "{% link assets/multimeters_and_measurements/current_circuit_schematic.png %}" width=" 350" alt="Schematic"></td>
<td style="text-align: center"><img src= "{% link assets/multimeters_and_measurements/measure_voltage_circuit.jpg%}" width="250" alt="Breadboard connections"></td>
<td style="text-align: center"><img src= "{% link assets/multimeters_and_measurements/measure_voltage_circuit_alligatorclips.jpg %}" width="250" alt="Alligator clips connection"></td>
</tr>
</tbody>
</table>
<p align = "center">
Figure 8. These are the connections for the circuit to measure voltage.   <br>
</p> 

Step 1: **Make connections:** Follow the schematic [Figure 8] or you can follow to picture to make connections shown in the schematic.

Step 2: **Measure the current:** You will be connecting your two alligator clips to the points  <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) of the schematic to measure current. If you're following the breadboard pictures from Fig 8, you will connect the black alligator clip to the black jumper wire and the red alligator clip to the red jumper wire.


**b) Measure Varying Voltage:** 

We will be using an analog temperature sensors for this lab; an analog temperature sensors is a resistor that changes its resistance with temperature. We can then use Ohm's Law to calculate the temperature based on the measured resistance.
Refer to the image [Figure 9] of the pinout for the Analog Temperature Sensors to make sure you're making the connections to the right pins on the breadboard.

<table style="margin: 0 auto;">
<thead>
<tr>

<th style="text-align: center">Analog Temperature Sensors Pinout <br> <span style="font-size: 8px;"> Image Credit: Texas Instruments.</span> </th>
<th style="text-align: center">Schematic</th>
<th style="text-align: center">Breadboard connections</th>
<th style="text-align: center">Alligator clips connection</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center"> <img src="{% link /assets/multimeters_and_measurements/thermistor_pionut.png %}" width="350" alt="Pinout"></td>
<td style="text-align: center"> <img src="{% link assets/multimeters_and_measurements/thermistor__circuit__schematic.png %}" width="400" alt="Schematic"></td>
<td style="text-align: center"><img src= "{% link assets/multimeters_and_measurements/thermistor_circuit.jpg%}" width="310" height = "275" alt="Breadboard connections"></td>
<td style="text-align: center"><img src= "{% link assets/multimeters_and_measurements/thermistor_circuit_alligator_clips.jpg %}" width="300" height = "275" alt="Alligator clips connection"></td>
</tr>
<tr> 
<!-- <td style="text-align: center">Breadboard</td> 
<td style="text-align: center">Arduino Uno, Leonardo, or similar</td> 
<td style="text-align: center">Red LED</td>  </tr> -->
</tr>
</tbody>
</table>
<p align = "center">
Figure 9. These are the connections for the circuit to measure varying voltage.   <br>
</p> 

Step 1: **Make connections:** Follow the schematic [Figure 9] or you can follow to picture to make connections shown in the schematic. 

Step 2: **Measure the voltage:** Begin by measuring the voltage of the analog temperature sensors at room temperature. Then, pinch the analog temperature sensors with your fingers and observe the change in voltage.

**Note:** Connect your multimeter at points <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) on all schematics. You will connect the black alligator clip to the black jumper wire and the red alligator clip to the red jumper wire, if you're following the breadboard pictures from Fig 9.

You notice voltage increases as you hands are hotter. This is because the resistance of the analog temperature sensors increased causing an increase in the voltage.  According to Ohms Law: $$ 𝑉 = I𝑅 $$ [this is a rearrangement of the Ohm's Law] an increase in the resistance causes an increase in the voltage. 

💡 **Explore Activity:** You can use the voltage you measured to find the temperature. You can use this formula: Temp = 33.37 x Vout – 6.88, the measured temperature is in Fahrenheit. [Note: it might not always be normal.]

### ⚡ Current: 

**Note:** Measuring current is a little risky, we need to be very cautious when measuring current. For today's lab we will be calculating current using the other properties in Ohm's Law. Connect your multimeter at points <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) on all the following schematics.

**a) Calculate Current:** 

<table style="margin: 0 auto;">
<thead>
<tr>
<th style="text-align: center">Schematic</th>
<th style="text-align: center">Breadboard connections</th>
<th style="text-align: center">Alligator clips connection</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center"> <img src="{% link assets/multimeters_and_measurements/potentiometer_led_circuit__schematic.png %}" width="400" alt="Schematic"></td>
<td style="text-align: center"><img src= "{% link assets/multimeters_and_measurements/potentimater_circuit.jpg%}" width="300" alt="Breadboard connections"></td>
<td style="text-align: center"><img src= "{% link assets/multimeters_and_measurements/potentimater_circuit_aliigator_clip.jpg %}" width="300" alt="Alligator clips connection"></td>
</tr>
<tr> 
<!-- <td style="text-align: center">Breadboard</td> 
<td style="text-align: center">Arduino Uno, Leonardo, or similar</td> 
<td style="text-align: center">Red LED</td>  </tr> -->
</tr>
</tbody>
</table>
<p align = "center">
Figure 10. These are the connections for the circuit to calculate current.   <br>
</p> 

Step 1: **Make connections:** Follow the schematic [Figure 10] or you can follow to picture to make connections shown in the schematic. Once you have completed the connections, you are free to turn the wiper (knob) around to see if the LED's brightness changes. 

Remember this expression: $$ I = \frac{V}{R} $$?<br> This equation suggests that as long as we know voltage ($V$) and Resistance ($R$) we can find current ($I$). Let's see if that's true!
 
Step 2: **Measure:** We know the resistance of the resistor and potentiometer from our previous activities. Let's measure the voltage on the circuit, connect your alligator clips to the circuit as shown on the circuit. Make sure the multimeter in the right setting to measure voltage. Take note of the voltage reading. You will connect the black alligator clip to the black jumper wire and the red alligator clip to the red jumper wire, if you're following the breadboard pictures from Fig 10.

Step 3: **Make calculations:** Keep the potentiometer in its highest resistance setting (when the LED is the brightest). Now since we have a normal resistor and a potentiometer (which is varying resistance) we will need to add them to get one resistance value. Use the equation to find current!


In our little circuit, you used the potentiometer to change the resistance. We know that more resistance causes less current to flow. This is due to the way current and resistance are related in the equation. The voltage across the LED remains constant; therefore, this change in LED’s brightness is always due to current.  

💡 **Explore Activity:** Try calculating the current when you increase the resistance of the potentiometer?

