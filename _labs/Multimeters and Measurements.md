---
title: Multimeters & Measurements
number: 2
layout: lab
---

## Overview
In this lab we will be using the tools we know and measure DC voltage, DC current, and resistance. You will become familiar with how to operate circuits on breadboards and multimeters and their uses.  
## Background/Preparation
To measure current, we need an Ammeter; to measure voltage we need voltmeter and to measure resistance we would need an ohmmeter. Imagine so many different machines to measure so many properties in a circuit. It would be such great chaos, but we have multimeters to our rescue! A multimeter is a great tool to measure various electrical properties and it can all be done with one machine! It saves us so much time and energy! 

A lot of the multimeters can measure DC voltage, AC voltage, DC current, Resistance, Diode tests and battery resistance. They have certain components that we need to know about first: 

<p align = "center">
<img src="{% link /assets/Multimeters and Measurements/Multimeter.png %}" width="300"/>
<!-- <img src="../assets/Multimeters and Measurements/Multimeter.png" width="300"/> -->
</p>

1. The COM pin is always connected to the ground. 

2. The VΩmA port is connected to the positive of your source.  

3. We can turn the nob to measure Resistance, DC voltage, DC current, and AC voltage. 

Now that we know the basic components, let’s take a little tour. The resistance side of the multimeter has multiple settings we can measure from 200Ω to 2MΩ, the same applies for all other settings. So, you need to be careful when you want to measure something, you might not be getting the right measurements because you are not in the right setting.

## Equipment and Materials
- Led  (5)

- Potentiometer (1)

- Buzzer (1)

- Resistors: 10 kΩ, [need to add more] 

- Jumper Wires (10)

- Breadboards (1)

- A 9V battery (1)

- Alligator clips (2)

- A thermistor (1)

## Procedure
### Introduction to Ohm’s Law: 

Ohm’s Law is a fundamental concept in electricity and electronics. 

Definition: It states that the current flowing through a conductor between two points is directly proportional to the voltage across the two points, and inversely proportional to the resistance between them. 

Often written as:  $$ I = \frac{V}{R} $$

Where, I is the current, measured in amperes (A), V is voltage, measured in volts (V) and R is resistance, measured in ohms (Ω). 

Think of it like a water slide: the voltage is like the height of the slide (more height means more speed), the current is like the amount of water flowing down the slide, and the resistance is like the width of the slide (a narrower slide lets less water through). So, if you increase the voltage (pressure), more current (water) will flow. If you increase the resistance (make the pipe smaller), less current (water) will flow. 

<p align = "center" >
<img src="{% link /assets/Multimeters and Measurements/Ohm's Law.png %}" width="500"/>
<!-- <img src="../assets/Multimeters and Measurements/Ohm's Law.png" width="500"/> -->
</p>
<p align = "center">
“NASA - Ohm’s Law.” Glenn Research Center, NASA, [www.grc.nasa.gov/www/k-12/airplane/ohms.html]. Accessed 10 June 2024.
</p>

Let’s see if we can measure these quantities discussed in Ohm’s Law.  

#### Resistance: 

a) Calculate Resistance: 

Step 1: Calculate the tolerance of the resistors of your choice using the tolerance percent column from the chart. Make sure you check the 4-band code, or 5-band code according to the resistor you have chosen.  

Sept 2: Now measure the resistance on the multimeter and cross check it with the tolerance window you calculated.  

To do that: set the multimeter to measure resistance, make sure you are on the right multiplier setting. Use the probe wires but connect one end of the alligator clip to the probe end. Now connect **Ground** (COM) to one end of the resistor and Positive (VΩ mA) to the other end of the resistor. Now you can check the resistance of the resistor! 

<p align = "center" >
<img src="{% link assets/Multimeters and Measurements/Resistance Reader Chart.png %}" width="500"/>
<!-- <img src="../assets/Multimeters and Measurements/Resistance Reader Chart.png" width="500"/> -->
</p>

 b) Calculate Combined Resistance: 

 Step 1: Set your choice of resistors, alongside each other like in the schematic, this is called a series set up, where the resistors are in a series.  

Step 2: Clip the alligator clips to the ends of the resistors in series to measure the combined resistance. You can guess the combined resistance by adding the resistance of all the resistors up.  

This is what a series set up does, these components are connected end-to-end in the circuits so, it adds up the resistance and voltage across the circuit. So, the total voltages or resistance will be the sum of their individual voltages and resistance.  

c) Calculate Varying Resistance: 

Step 1: Take a potentiometer and clip the alligator clips to the outer two pins, as shown in the video. Turn your wiper around does your resistance change? 

Step 2: Make sure your multimeter is in the right setting to measure resistance. 

Step 3: Now connect the red alligator clips to the middle and turn the wiper, does your resistance change? 

You might have noticed that the resistance changed in one of the settings. This is because of how potentiometers work. As you move the wiper closer to ground (the black wire) you notice the resistance going down, you’re decreasing the resistance between the wiper and ground. As you move the wiper closer to positive (the red wire) you notice the resistance going up, you’re increasing the resistance between positive and the wiper. Potentiometers are great tools to control how much resistance you want to pass through a certain circuit.   

 
#### Voltage: 

a) Calculate Constant Voltage: 

Step 1: Connect the red alligator clip to the red wire on your battery and connect the black alligator to the black wire on your battery. It should measure 9V or close to that value.  

Sept 2: Interchange the red and black alligator connections. Is there any change in the     	  measurement?  

The change is because we are measuring our positive from the ground. So, it changes the flow of electrons making the value change.  	 

b) Calculate Varying Voltage: 

We will be using a thermistor for this lab; a thermistor is a resistor that changes resitance	with temperature which then due to Ohms law cause a change in the voltage.  

Step 1: Let’s make the connections shown on the schematic. You can also follow the video to make connections. [Insert schematic diagram]  

Step 2: Now use the multimeter to measure the voltage as you pinch your finger and at room temperature.  

 

You notice that the hotter your hands are the more the voltage is, it is because resistance increased causing an increase in the voltage. $$ 𝑉 = 𝑖𝑅 $$

Fun Activity: You can use the voltage you measured to find the temperature. You can use this formula: Temp = 33.37 x Vout – 6.88  

#### Current: 

a) Calculate Varying Current: 

Step 1: Let’s make the connections shown on the schematic. You can also follow the video to make connections. [Insert schematic diagram]  

Step 2: Turn the wiper around on the potentiometer. Do you notice any changes?   

Remember the Ohm’s law equation: 
$$ I = VR $$

in our little circuit you used the potentiometer to change the resistance and we know that more resistance causes less current due the way current, and resistance are related. The voltage across the LED remains constant therefore this change in LED’s brightness is primarily due to the current.  

Fun Activity: You can now replace the led with a buzzer and see how that changes the buzzer.  

## Post-Lab Work

## Rubric/Submission
