---
title: Multimeters & Measurements
number: 2
layout: lab
---

## Overview
In this lab we will be using the tools we know and measure DC voltage, DC current, and resistance. You will learn how to operate circuits using breadboards and how to use multimeters.  

## Background/Preparation <br>

###  🎛️ Introduction to Multimeters: 
To measure current, we'd need an Ammeter; to measure voltage we'd need voltmeter and to measure resistance we would need an ohmmeter. Imagine so many different machines to measure so many properties in a circuit. It would be such great chaos, but came multimeters to our rescue! A multimeter is a great tool to measure various electrical properties and it can all be done with one machine! It saves us so much time and energy! 

A lot of the multimeters can measure DC voltage, AC voltage, DC current, Resistance, Diode tests and battery resistance. They have certain components that we need to know about first: 

<p align = "center">
<img src="{% link /assets/multimeters_and_measurements/multimeter.png %}" width="250"/>
</p>

<p align = "center">
Figure 1. This image shows you the symbols and the quantity they measure and some important ports for measurement.
</p>



1. The **COM** pin is always connected to the ground. 

2. The **VΩmA** port is connected to the positive of your source.  

3. We can turn the nob to measure Resistance, DC voltage, DC current, and AC voltage. 

Now that we know the basic components, let’s take a little tour. The resistance side of the multimeter has multiple settings we can measure from 200Ω to 2MΩ, the same applies for all other settings. So, you need to be careful when you want to measure something, you might not be getting the right measurements because you are not in the right setting.

### 🔍 Introduction to Ohm’s Law: 

Ohm’s Law is a fundamental concept in electricity and electronics. 🤓

**Definition:** It states that the current flowing through a conductor (anthing that allows electricity to flow through it) between two points is directly proportional to the voltage across the two points, and inversely proportional to the resistance between them. Written as: <br>

$$
    I = \frac{V}{R} 
$$ 


Think of it like a water slide: the voltage is like the height of the slide (more height means more speed), the current is like the amount of water flowing down the slide, and the resistance is like the width of the slide (a narrower slide lets less water through). So, if you increase the voltage (speed), more current (water) will flow. If you increase the resistance (make the pipe smaller), less current (water) will flow. 

Here is a simple circuit to depict Ohm’s Law: 
<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/Ohms_Law.png %}" width="500"/>
</p>
<p align = "center">
Figure 2. This image is a circuit depicting Ohms Law. <br>
Image credit: <a href="https://www.grc.nasa.gov/www/k-12/airplane/ohms.html" target="_blank">Glenn Research Center, NASA</a> 

</p>

Another important thing about these quantites thier value can change on how you connect them. There are two ways to connect them, let's take a quick dive into series and parallel circuits. When you make measurements with a multimeteer, you will need to decide how you want to connect it to measure the right quantity. When connected in a series circuit all components of the circuit have the **<em> same current </em>**. When connected in parallel all components have the **<em> same voltage </em>**.  So, when you want to measure either of these quantities you will want to make sure yuou connect them in the right way. 

<p align = "center">
<img src="{% link /assets/multimeters_and_measurements/series-circuit-parallel-circuit.png %}" width="500"/>
</p>
<p align = "center" >
Figure 2. This image shows series and paralle connections. <br>
Image Credit:  <a href = "https://www.sciencebuddies.org/image-credit?id=4803" target = "_blank">Ben Finio, Science Buddies / Science Buddies</a>
</p>

<!-- ><a href="#-resistance">Resistance</a>  -->
<!-- <a href="#voltage">Voltage</a>  -->
<!-- <a href="#-current">Current</a>   -->

It seems like a lot to keep track of, so here is a table to summarize everything:

|  Variable  |  Unit  | Symbol | Connecting Measurement Tools |
| :--------: | :----: | :----: | :--------------------------: |
|  Current   | Ampere | **A**  |          In Series           |
|  Voltage   | Volts  | **V**  |          In Prallel          |
| Resistance |  Ohms  | **Ω**  |     Directy to component     |

Now that we have all the required information. 
Let’s see if we can measure these quantities discussed in Ohm’s Law.  

## Equipment and Materials
- Led  (5) (0.02A) (R, B, G, Purple, Orange, Yellow)

- Potentiometer (1) (23 kΩ)

- Buzzer (1) (R: 600 Ω)

- Resistors: 250 Ω, 360 Ω, 750 Ω, 10 kΩ, 5 kΩ, 65 kΩ,

- Jumper Wires (10)

- Breadboards (1) 

- 9V battery (1) (6A)

- Alligator clips (2)

- Thermistor (1) [TMP36 of LMT85]

- Battery Screw Terminal (1)

## Procedure

### 🛠 Resistance: 

**a) Read and Calculate Resistance:** 
<!-- <ins>Step 1:</ins> to underline -->
<!-- <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Try it yourself!</a> -->

Step 1: Calculate the resistance and tolerance of the resistors of your choice using the chart (more in the video). Make sure you check the 4-band code, or 5-band code according to the resistor you have chosen. Also calculate the torlerance window using the tolerance column.  

Step 2: Set the multimeter to measure resistance, make sure you are on the right multiplier setting (more in the video). Use the probe wires but connect one end of the alligator clip to the probe end. Now connect **Ground** (COM) to one end of the resistor and **Positive** (VΩ mA) to the other end of the resistor.

Sept 3: Now measure the resistance on the multimeter and cross check it with the tolerance window you calculated.Now you've just checked the resistance of the resistor! 🤩 


<!-- 
💡 **Explore Activity:** <a href="https://youtu.be/dQw4w9WgXcQ?feature=shared&t=64" target="_blank">Try it yourself!</a> You can click on this hyperlink and try to put color bands and see the calculated resitance. to add timestamp on yt -->

<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/resistance_reader_chart.png %}" width="500"/>
</p>

<p align = "center" >
Figure 3. Resistance reader chart.  <br>
Image Credit: Digi-Key Electronics 
<!-- "Conversion Calculator: Resistor Color Code." Digi-Key Electronics, www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code.  -->
</p>
💡 **Explore Activity:** <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Try it yourself!</a> You can click on this hyperlink and try to put color bands and see the calculated resitance. 

**b) Calculate Varying Resistance:** <br>
We will be using a potentiometer here to measure varying resistance. Here is simple GIF to show you how they work:

<p align = "center" >
<img src="{% link assets/multimeters_and_measurements/potentiometer_overview.gif %}" width="500"/>
</p> 
<p align = "center">
Figure 4. An overview of the pinout of a potntiometer.  <br>
Image Credit: <a href = "https://makeabilitylab.github.io/physcomp/arduino/potentiometers.html#how-does-a-potentiometer-work" target = "_blank">Physical Computing and Craft Technologies, University of Washington.</a>
<!-- Lazem, Sally, and Jon Froehlich. "Potentiometers." Physical Computing and Craft Technologies, University of Washington, 8 June 2020, makeabilitylab.github.io/physcomp/arduino/potentiometers.html#how-does-a-potentiometer-work. -->
</p>
As you move the wiper around the resistance changes, so when you go left to right there is an increase in the resistance. Now onto measuring resistance with the potentiometer!

Step 1: Take a potentiometer and clip the alligator clips to the outer two pins, as shown in the video. Turn your wiper around does your resistance change? 

Step 2: Make sure your multimeter is in the right setting to measure resistance. 

Step 3: Now connect the red alligator clips to the middle and turn the wiper, does your resistance change? 

You might have noticed that the resistance changed in one of the settings. This is because of how potentiometers work. As you move the wiper closer to ground (the black wire) you notice the resistance going down, you’re decreasing the resistance between the wiper and ground. As you move the wiper closer to positive (the red wire) you notice the resistance going up, you’re increasing the resistance between positive and the wiper. Potentiometers are great tools to control how much resistance you want to pass through a certain circuit. We will be using them in this lab! 

 
### 🔋Voltage: 


We know that when we measure voltage we connect the multimeter in parallel. So connect your multimter in parallel connection at poins **a** (Positive) and **b** (Ground) . <br>

**a) Calculate Series Voltage:** 

<!-- [need to/ might change] -->
Step 1: Set the resistors and the LEDs like in the shcematic. We will be setting the LEDs in a series set up.

Step 2: Clip the alligator clips to one end of the circuit in series to measure the combined voltage. You can move the alligator clips to the cathod of the LEDs and see the voltage change.

This is what a series set up does, these LEDs are connected end-to-end in the circuits so, it adds up the resistance and voltage across the LEDs. So, the total voltages or resistance will be the sum of their individual voltages and resistance.  

💡 **Explore Activity:** Try to connect resitors end-to-end and measure the resitance. Does it add up?

**b) Calculate Varying Voltage:** 

We will be using a thermistor for this lab; a thermistor is a resistor that changes resitance with temperature which then due to Ohms law cause a change in the voltage. 

<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/thermistor_schematic.png %}" width="350"/>
</p>

<p align = "center" >
Figure 5. This is a schematic we will be making to caluculate varying voltage.  <br>
</p> 

Step 1: Let’s make the connections shown on the schematic. You can also follow the video to make connections. 

Step 2: Now use the multimeter to measure the voltage as you pinch your finger and at room temperature.  

Here is the image of the pinout for the Thermistor. Make sure you make the connections to the right pins on the breadboard.

<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/thermistor_pionut.png %}" width="350"/>
</p>

<p align = "center" >
Figure 5. This is the pinout for a Thermistor.  <br>
Image Credit: Texas Instruments.
</p> 

You notice that the hotter your hands are the voltage increases, it is because resistance increased causing an increase in the voltage. $$ 𝑉 = 𝑖𝑅 $$

💡 **Explore Activity:** You can use the voltage you measured to find the temperature. You can use this formula: Temp = 33.37 x Vout – 6.88  

### ⚡ Current: 

We know that when we measure current we connect the multimeter in series. So connect your multimter in series at poins **a** (Positive) and **b**  (Ground). <br>

**a) Calculate Current:** 
<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/current_schematic.png %}" width="550"/>
</p>
<p align = "center" >
Figure 6. This is a schematic we will be making to caluculate current in a cicuit.  <br>
</p> 

Step 1: Let's make the connections shown in the schematic. You can also follow the video to make the connections. 

Step 2: You will be connecting your two aligator clips on to the points a and b of the schematic, this is putting your multimeter in series to measure current. 

💡 **Explore Activity:** You can mesure the current of the 9V battery. Is it what you expect it to be?

**b) Calculate Varying Current:** 

<p align = "center" >
<img src="{% link /assets/multimeters_and_measurements/potentiometer_and_led_schematic.png %}" width="550"/>
</p>
<p align = "center" >
Figure 6. This is a schematic we will be making to caluculate varying current in a cicuit using a potentiometer to vary current.  <br>
</p> 

Step 1: Let’s make the connections shown on the schematic. You can also follow the video to make connections. [Insert schematic diagram]  

Step 2: Turn the wiper around on the potentiometer. Do you notice any changes?   

Remember the Ohm’s law equation: 
$$ I = VR $$

in our little circuit you used the potentiometer to change the resistance and we know that more resistance causes less current due the way current, and resistance are related. The voltage across the LED remains constant therefore this change in LED’s brightness is primarily due to the current.  

💡 **Explore Activity:** You can now replace the led with a buzzer and see how that changes the buzzer. Is it the same for a buzzer too?


## Post-Lab Work

## Rubric/Submission
