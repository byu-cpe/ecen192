---
title: Multimeters & Measurements
number: 1
layout: lab
---

## Overview
In this lab we will be using the tools we know and measure DC voltage, DC current, and resistance. You will learn how to operate circuits using breadboards and how to use multi-meters.  

## Background/Preparation <br>

### 🔍 Introduction to Ohm’s Law: 

Ohm’s Law is a fundamental concept in electricity and electronics. 🤓

**Definition:** It states that the current flowing through a conductor (anthing that allows electricity to flow through it) between two points is directly proportional to the voltage across the two points, and inversely proportional to the resistance between them. Written as: <br>
<p  align = "center">
 
</p>
<p style="border: 2.5px double red; padding: 0px; background-color: white;  width: 85px;  height: 70px; place-items: center; margin: auto;" >
 $$ I = \frac{V}{R} $$
</p>



Think of it like a water slide: the current is like the height of the slide (more height means more speed), the voltage is like the amount of water flowing down the slide (the volume of water), and the resistance is like the width of the slide (a narrower slide lets less water through). So, if you increase the voltage (volume of water), more current (water) will flow. If you increase the resistance (make the slide narrower), less current (water) will flow. 

Here is a simple circuit to depict Ohm’s Law: 
<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/Ohms_Law.png %}" width="500"/>
</p>
<p align = "center">
Figure 1. This image is a circuit depicting Ohms Law. <br>
Image credit: <a href="https://www.grc.nasa.gov/www/k-12/airplane/ohms.html" target="_blank">Glenn Research Center, NASA</a> 

</p>

<!-- ><a href="#-resistance">Resistance</a>  -->
<!-- <a href="#voltage">Voltage</a>  -->
<!-- <a href="#-current">Current</a>   -->

It seems like a lot to keep track of, so here is a table to summarize everything:

| Variable  |  Unit       |    Symbol     | 
| :----:    |    :----:   |    :----:     |   
| Current   | Ampere      |    **A**      |    
|Voltage    | Volts       |    **V**      |   
|Resistance | Ohms        |    **Ω**      |  


###  🎛️ Introduction to Multi-meters: 
To measure current, we'd need an Ammeter; to measure voltage we'd need voltmeter and to measure resistance we would need an ohmmeter. Imagine so many different machines to measure so many properties in a circuit. It would be such great chaos, but came multi-meters to our rescue! A multi-meter is a great tool to measure various electrical properties and it can all be done with one machine! It saves us so much time and energy! 

A lot of the multi-meters can measure DC voltage, AC voltage, DC current, Resistance, Diode tests and battery resistance. They have certain components that we need to know about first: 

<p align = "center">
<img src="{% link /assets/multimeters_and_measurements/multimeter.png %}" width="250"/>
</p>

<p align = "center">
Figure 2. This image shows you the symbols and the quantity they measure and some important ports for measurement.
Image credit: Neoteck User Manual
</p>
<p align = "center">
<img src="{% link assets/multimeters_and_measurements/multimeter_symbols.png %}" width="500"/>
</p>
<p align = "center">
Figure 3. These are thy symbols you will see on a multi-meter and what they mean.
Image credit: Neoteck User Manual
</p>
These are important parts of the multi-meter:
1. LCD display
2. “FUNC” Push button
3. “BACK LIGHT” push button and ‘HOLD” push button
4. Rotary Switch (Knob)
5. “V/Ω/HZ/uA/mA”Input terminal
6. “COM” input terminal
7. “10A” input terminal

Here are some things to keep in mind when you work with the multi-meter:

1. The **COM** pin is always connected to the ground, is a common reference point in circuits, often considered zero voltage(black wire). 
2. The **VΩmA** port is connected to the positive, it is also refered to as a point of high voltage (red wire) of your source.  
30. We can turn the knob to measure the quatity of your choice like : Resistance, DC voltage, DC current, and AC voltage. 

Now that we know the basic components, let’s take a little tour. The resistance side of the multi-meter has multiple settings we can measure from 200Ω to 2MΩ, the same applies for all other settings. So, you need to be careful when you want to measure something, you might not be getting the right measurements because you are not in the right setting.

Now that we have all the required information. 
Let’s see if we can measure these quantities discussed in Ohm’s Law.  

## Equipment and Materials
- Multi-meter

- Led  (5) (0.02A) (R, B, G, Purple, Orange, Yellow)

- Potentiometer (1) (23 kΩ)

- Buzzer (1) (R: 600 Ω)

- Resistors: 250 Ω, 360 Ω, 750 Ω, 10 kΩ, 5 kΩ, 68 kΩ,

- Jumper Wires (10)

- Breadboards (1) 

- 9V battery (1) (6A)

- Alligator clips (2)

- Thermistor (1) [TMP36 of LMT85]

- Battery Screw Terminal (1)

## Procedure

### 🛠 Resistance: 

**Note:** Make sure you have the multi-meter to measure resistance (Ω symbol)

**a) Read and Calculate Resistance:** 
<!-- <ins>Step 1:</ins> to underline -->
<!-- <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Try it yourself!</a> -->

Step 1: **Calculate the resistance and tolerance:** Choose a few resistors from your collection. We will be using the color code chart and this <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Resistance Calculator</a> to calculate the resistance and the tolernace of each resistor you choose. Pay attention to the number of colored bands on each resistor to determine if it uses a 4-band or 5-band color code system.



Step 2: **Measure the resistance:** Set the multi-meter to measure resistance (Ω symbol). Use the alligator clips to connect to one end of the resistor, connect **Ground** (COM, black wire) to one end of the resistor and **Positive** (VΩ mA, red wire) to the other end of the resistor.

<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/resistance_reader_chart.png %}" width="500" alt = "Image = 1"/>
</p>

<p align = "center" >
Figure 4. Resistance reader chart.  <br>
Image Credit: Digi-Key Electronics 
<!-- "Conversion Calculator: Resistor Color Code." Digi-Key Electronics, www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code.  -->
</p>


**b) Calculate Varying Resistance:** <br>
We will be using a potentiometer here to measure varying resistance. Here is simple GIF to show you how they work:

<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/Potentiometer.png%}" width="170" alt = "Image = 2"/>
<img src="{% link assets/multimeters_and_measurements/potentiometer_overview.gif %}" width="500" alt = "Image = 1"/>
</p> 
<p align = "center">
Figure 5. A potentiometer and an overview of the pinout of a potntiometer.  <br>
Image Credit:<a href = "https://www.elexp.com/products/18sts200pot-cermet-w-shaft-200" target = "_blank">Electronix Express.</a> (potentiometer) and <a href = "https://makeabilitylab.github.io/physcomp/arduino/potentiometers.html#how-does-a-potentiometer-work" target = "_blank">Physical Computing and Craft Technologies, University of Washington.</a> (potentiometer pinout)
</p>
As you move the wiper (or knob) around the resistance changes. When you go left to right there is an increase in the resistance. Now onto measuring resistance with the potentiometer!

Step 1: **Make connections:** begin with taking a potentiometer and put it on a bread board as shown in the video. Now stick two wires to the outher two pins of the poterntiometer, then go on to clip the alligator clips (red and black) from the milti-meter to the outer wires that were previously connected to the two pins. Observe the multi-meter reading, now turn your wiper (knob) around, does your resistance change? 


Step 2: **Adjust connections:** Move the red wire from the outer pin to the middle of the potentiometer. Now, turn the wiper (knob). Does your resistance change? 

Have you ever adjusted the volume on a radio? By turning the knob, you control how loud the music plays. Potentiometers work in a similar way for electrical circuits!  They are like adjustable resistors that allow you to control the amount of resistance between two points in a circuit. Imagine a water pipe with a valve, as you open the valve wider (like turning the knob), more water flows (similar to more current flowing in a circuit with lower resistance). By moving a wiper inside the potentiometer, we can change the resistance between its terminals. Moving the wiper(knob) towards grounds reduced the resistance and moving to positive increases the resitance thus, affecting the current flow in the circuit. We'll be using these cool properties of a potentiometer in our lab today!
 
### 🔋Voltage: 

**Note:** Make sure you have set the multi-meter in the right setting to measusre DC voltage (V symbol).

**a) Calculate Voltage:** 

p align = "center" >
<img src="{% link assets/multimeters_and_measurements/current__circuit_schematic.png %}" width="550"/>
</p>
<p align = "center" >
Figure 8. This is a schematic we will be making to caluculate current in a cicuit.  <br>
</p> 

Step 1: **Make connections:**  Follow the schematic [Figure 8] or you can follow to video to make conenctions shown in the schematic.

Step 2: **Measure the current:** You will be connecting your two aligator clips to the points  <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) of the schematic to measure current.


**b) Calculate Varying Voltage:** 

We will be using a thermistor for this lab; a thermistor is a resistor that changes it's resistance with temperature. This change in resistance is due to Ohms law; a change in the resistance causes a change in the resitance. 
Refer to the image [Figure 6] of the pinout for the Thermistor to make sure you're making the connections to the right pins on the breadboard.

<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/thermistor_pionut.png %}" width="350"/>
</p>

<p align = "center" >
Figure 6. This is the pinout for a Thermistor.  <br>
Image Credit: Texas Instruments.
</p> 


Step 1: **Make connections:** Follow the schematic [Figure 7] or you can follow to video to make conenctions shown in the schematic. 

Step 2: **Measure the voltage:** Begin by measuring the voltage of the thermistor at room temperature. Then, pinch the thermistor with your fingers and observe the change in voltage.

**Note:** Connect your multi-meter at points <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) on all schematics.


<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/thermistor_circuit_schematic.png %}" width="400"/>
</p>

<p align = "center" >
Figure 7. This is a schematic we will be making to caluculate varying voltage. [need to change] <br>
</p> 


You notice voltage increases as you hands are hotter. This is because the resistance of the thermistor increased causing an increase in the voltage.  According to Ohms Law: $$ 𝑉 = I𝑅 $$ [this is a rearangment of the Ohm's Law] a increase in the resitance causes an increase in the voltage. 

💡 **Explore Activity:** You can use the voltage you measured to find the temperature. You can use this formula: Temp = 33.37 x Vout – 6.88, the calucalted thempeature in in Fahrenheit. 

### ⚡ Current: 

**Note:** Make sure you have set the multi-meter in the right setting to measusre DC current (A symbol). Connect your multi-meter at points <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) on all the following schematics.

**a) Calculate Current:** 
<span style="color: red;"> <b> Under making </b>

<!-- 💡 **Explore Activity:** You can mesure the current of the 9V battery. Is it what you expect it to be? -->

**b) Calculate Varying Current:** 

<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/potentiometer_led_circuit_schematic.png %}" width="550"/>
</p>
<p align = "center" >
Figure 9. This is a schematic we will be making to caluculate varying current in a cicuit using a potentiometer to vary current.  <br>
</p> 

Step 1: **Make connections:**  Follow the schematic [Figure 9] or you can follow to video to make conenctions shown in the schematic.

Step 2: **Adjust the setting:** To adjust the current you can turn the wiper around on the potentiometer. Do you notice any changes?   

Remember the Ohm’s law equation: 
$$ I = \frac{V}{R} $$ 

In our little circuit you used the potentiometer to change the resistance and we know that more resistance causes less current due the way current and resistance are related. The voltage across the LED remains constant therefore this change in LED’s brightness is always due to current.  

💡 **Explore Activity:** You can now replace the led with a buzzer and see how that changes the buzzer. Is it the same for a buzzer too?

