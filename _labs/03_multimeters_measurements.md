---
title: "Multimeters & Measurements"
number: 3
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

## Background/Preparation <br>

### Introduction to Ohm’s Law: 

Ohm’s Law is one of the most fundamental concepts in the theory of electronics. Ohm's law is states:

The **current** *(amount of electricity)* flowing through a **conductor** *(anthing that allows electricity to flow through it)* at any two points is <ins>directly proportional</ins> to the **voltage** *(energy difference)* across the two points, and <ins>inversely proportional</ins> to the **resistance** *(of current flow)* between them. Ohm's law is written: <br>

<p align = "center">
</p>
<p style="padding: 0px; background-color: white; width: 350px; height: 100px; place-items: center; margin: auto; font-size: 30px;">
  $$ I = \frac{V}{R} ~~ or ~~ V = IR $$
</p>

The concepts of Ohm's law are often compared to a water pipe: the _voltage_ is the pressure of the water in the pipe - higher pressure pushes more water down the pipe. The _resistance_ is the size of the pipe - a larger pipe allows for easier water flow through the pipe. Finally, the _current_ of the pipe is the actual amount of water flowing through any given cross section of the pipe.

Pause and think - how would changing the height and width of the pipe affect how much water is flowing through it? How would pushing more water through the same pipe affect the pressure of the pipe? How can you relate these terms back to the concept of electricity flowing through wires?

Here is a simple circuit that depicts Ohm’s Law in action:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/Ohms_Law.png %}">
  <figcaption style="text-align: center;"><strong></strong> This image is a circuit depicting Ohms Law. <br>
  Image credit: <a href="https://www.grc.nasa.gov/www/k-12/airplane/ohms.html" target="_blank">Glenn Research Center, NASA</a>
  </figcaption>
</figure>

Here is a table to summarize everything:

| Variable    | Unit    | Symbol  | 
| --------    | ----    | ------  |   
| Current     | Ampere  | **A**   |    
| Voltage     | Volts   | **V**   |   
| Resistance  | Ohms    | **Ω**   |  

### Introduction to Multimeters: 

To measure current, we'd need an Ammeter; to measure voltage we'd need voltmeter and to measure resistance we would need an ohmmeter. With so many different machines to measure so many properties it would be chaos in your labs, but luckily we have multimeters to save the day! Most multimeters can measure DC voltage, AC voltage, DC current, resistance, can perform diode tests, and can measure battery resistance. Here's a diagram of the working parts of a multimeter: 

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/multimeter.png %}" style="display: block; margin: auto;">
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
  <img src="{% link assets/03_multimeters_measurements/multimeter_symbols.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A table depicting the meaning of some important symbols of the multimeter. <br> Image credit: Neoteck User Manual</figcaption>
</figure>

Here are some things to keep in mind when you work with the multimeter:

1. The **COM** pin, which stands for *COMMON*, is always connected to the ground and acts as a common reference point. It is almost always considered zero voltage, and it is usually represented by a black wire. 
2. The **VΩmA** port is connected to the positive. It is considered the point of high voltage, and is often represented by a red wire.
3. By turning the knob, we can measure the quantity of our choice. 

Notice that while there are only 3 _types_ of measurements, V, A, and Ω, there are also several _quantities_ available for each type of measurement. Becuase there is so much variety in electronic design, difference scales are available depending on the range of V, A, or Ω you expect to encounter.

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

- Thermistor (1) [TMP36 of LMT85]

- Battery Screw Terminal (1)

## Procedure

### Resistance: 

**Remember:** Make sure you have the multimeter to measure resistance (Ω symbol)

#### Read and Calculate Resistance:

**Step 1: Calculate the resistance and tolerance:** Choose a few resistors from your collection. We will be using the color code chart and this <a href="https://www.digikey.com/en/resources/conversion-calculators/conversion-calculator-resistor-color-code" target="_blank">Resistance Calculator</a> to calculate the resistance and the tolernace of each resistor you choose. Pay attention to the number of colored bands on each resistor to determine if it uses a 4-band or 5-band color code system.

**Step 2: Measure the resistance:** Set the multimeter to measure resistance (Ω symbol). Use the alligator clips to connect to one end of the resistor, connect **Ground** (COM, black wire) to one end of the resistor and **Positive** (VΩ mA, red wire) to the other end of the resistor.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/resistance_reader_chart.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Resistance reader chart.  <br> Image Credit: Digi-Key Electronics </figcaption>
</figure>

#### Calculate Varying Resistance:

We will be using a potentiometer here to create a varying resistance. Here is simple GIF to show you how they work:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/Potentiometer.png%}" width="170" style="display: block; margin: auto;">
  <img src="{% link assets/03_multimeters_measurements/potentiometer_overview.gif %}" width="500" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A potentiometer and an overview of the pinout of a potntiometer.  <br>
Image Credit:<a href = "https://www.elexp.com/products/18sts200pot-cermet-w-shaft-200" target = "_blank">Electronix Express.</a> (potentiometer) and <a href = "https://makeabilitylab.github.io/physcomp/arduino/potentiometers.html#how-does-a-potentiometer-work" target = "_blank">Physical Computing and Craft Technologies, University of Washington.</a> (potentiometer pinout)
</figcaption>
</figure>


If you remember our water pipe example, we can say that a potentiometer acts like a valve inside of the pipe - as we open the valve wider we allow more water to flow, and as we close the valve less water can flow. Remember that in our example less water is higher resistance, so closing the valve is equivalent to rotating the wiper to the right.

Summary: As you rotate the wiper (or knob) from left to right, the resistance increases. Let's try it!

**Step 1: Make connections:** Put the potentiometer on a breadboard as shown in the video. Connect two wires to the outer two pins of the potentiometer. Then clip the alligator clips (red and black) on the multimeter to those wires. Observe the multimeter reading. As you rotate the wiper around, does your resistance change? 

**Step 2: Adjust connections:** Move the red wire from the outer pin to the middle of the potentiometer. Now, rotate the wiper (knob). Does the resistance change? 

**Fun Fact**: Have you ever adjusted the volume on a radio? By turning the knob, you control how loud the music plays. This is a potentiometer at work! When you turn the knob on an analog radio, it changes the resistance in the circuit, which in turn changes the *amplitude* of the signal traveling out to the speakers, which we know as the *volume*. 
 
### Voltage: 

**Note:** Make sure you have set the multimeter in the right setting to measusre DC voltage (V symbol).

#### Measure Voltage:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/voltage__circuit_schematic.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> This is a schematic of the circuit we will be making to measure voltage in a cicuit.</figcaption>
</figure>

**Step 1: Make connections:**  Follow the schematic to make the circuit shown above.

**Step 2: Measure the voltage drop across the LED:** You will be connecting your two aligator clips to the points  <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> of the schematic to measure the voltage drop across the LED.


#### Measure Varying Voltage:

We will be using a thermistor for this lab; a thermistor is a resistor that changes its resistance with temperature.
Refer to the image of the pinout for the thermistor to make sure you're making the connections to the right pins on the breadboard.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/03_multimeters_measurements/thermistor_pionut.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> the pinout for a thermistor.  <br>
Image Credit: Texas Instruments.</figcaption>
</figure>

**Step 1: Make connections:** Follow the schematic to make the circuit shown above.

**Step 2: Measure the voltage:** Begin by measuring the voltage of the thermistor at room temperature. Then, pinch the thermistor with your fingers (which will increase temperature) and observe the change in voltage.

**Note:** Connect your multimeter at points <span style="color: red;"> <b> A </b> </span> (Positive) and  <span style = "color : red"> <b> B </b> </span> (Ground) on all schematics.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/thermistor_circuit_schematic.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> The schematic we will use to measure varying voltage.</figcaption>
</figure>

You'll notice that the voltage increased as the thermister's temperature did. Using your knowledge of Ohms Law: $$ 𝑉 = I𝑅 $$ - did the resistance of the therminster increase, or decrease? What do you think happened? 

**Explore Activity:** You can use the voltage you measured to find the temperature. You can use this formula: $$ T = 33.37 * V – 6.88 $$, where T is the calculated temperature in in Fahrenheit, and V is your measured voltage. 

### Current: 

**Note:** Make sure you have set the multimeter in the right setting to measusre DC current (A symbol).

#### Calculate Current:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/03_multimeters_measurements/potentiometer_led_circuit_schematic.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> This is a schematic we will be making to caluculate varying current in a cicuit using a potentiometer to control the current current.</figcaption>
</figure>

**Step 1: Make connections:**  Follow the schematic to make the circuit shown in the schematic above.

**Step 2: Adjust the setting:** Connect your multimeter at points <span style="color: red;"> <b> A </b> </span> (red lead) and  <span style = "color : red"> <b> B </b> </span>(black lead). Note that the multimeter acts as the final connection in the circuit. This is because it requires current to flow through it to measure it. Observe how the current changes while rotating the potentiometer's wiper. How does the LED change when you do that?   

Using the Ohm's law $$ I = \frac{V}{R} $$, decide: what is happening to the LED when you change the current? What causes the change in brightness in the LED - voltage, or current? How do you know?


<!--      Dynamic figure numbering script      -->
<!-- This block is not visible to the students -->
<script>
  // Select all figures on the page
  const figures = document.querySelectorAll('figure');

  // Loop through each figure and update the caption with dynamic numbering
  figures.forEach((figure, index) => {
    const figcaption = figure.querySelector('figcaption strong');
    if (figcaption) {
      figcaption.textContent = `Figure ${index + 1}:`; // Numbering starts at 1
    }
  });
</script>