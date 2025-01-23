---
title: "Breadboard"
number: 2
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

A breadboard, in circuitry, is a tool used primarily for prototyping or simple circuit development. They are especially useful because of their ability to be changed easily and their ability to work with a multitude of components. In addition to breadboards, we will be using LEDs and wires to create three or four circuits to better understand why breadboards are useful and how they function.


In todays lab you will:
  - Setup your breadboard
  - Build a simple LED circuit
  - Build a Traffic Light with 3 LEDs
  - Build a buzzer circuit
  - Explore and Build a different circuit of your choosing

## Background/Preparation

### Intital Setup

**You have your breadboard, battery, battery connector and terminal pins.**
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/breadboard_setup_1.png %}">
</figure>
**Screw the red and black wires from the battery connector into the terminal.**
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/breadboard_setup_2.png %}">
</figure>
**Put the terminal into the breadboard to match the red with the red rail and black with the blue rail.**
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/breadboard_setup_3.png %}">
  <figcaption style="text-align: center;"><strong></strong> Breadboard Setup </figcaption>
</figure>

## Equipment and Materials

- breadboard
- at least four LED lights
- at least four resistors
- button
- wires to connect components
- DIP Switch
- power source (battery, connector and screw terminals)
- button
- buzzer


## Procedure

### Simple LED Circuit

Turn on an LED. **Use the components in the bag with the BLUE dot**

Follow the diagram below to set up the components. Use the schematic to also compare the two and pay attention to how are they the same circuit.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/led_fritzing_breadboard.png %}">
  <figcaption style="text-align: center;"><strong></strong> Breadboard Diagram of Simple LED Circuit </figcaption>
</figure>
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/led_fritzing_schematic.png %}">
  <figcaption style="text-align: center;"><strong></strong> Schematic Diagram of Simple LED Circuit </figcaption>
</figure>

**Before you plug the LED in, notice - Light-Emitting Diodes, are unidirectional, meaning that they only allow current to flow in one direction. Most manufacturers denote which side is which by making the positive node (or cathode) longer than the negative node (or anode). Ensure that your LED is plugged in the right direction!**


### Traffic Light Circuit

Make a traffic light. **Use the components in the bag with BLUE dot**

We will utilize a dipswitch (a name for that type of switch) placed over the DIP Support gap. Again, see the image below for help. Make sure the switches are fully in the ON or OFF positions.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/traffic_light_breadboard.jpg %}">
  <figcaption style="text-align: center;"><strong></strong> Example of Traffic Light LED Circuit </figcaption>
</figure>

**Make sure the ground is connected on both sides of the breadboard. If you have a split rail make sure the ground rails are also connected.**

### Buzzer Circuit

Make a buzzer circuit. Use the schematic to take the 4 components and connect the on the breadboard in order to make it turn on an LED and a buzzer everytime you press a button.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/buzzer_items.png %}">
  <figcaption style="text-align: center;"><strong></strong> Items needed for Buzzer Circuit </figcaption>
</figure>
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/buzzer_schematic.png %}">
  <figcaption style="text-align: center;"><strong></strong> Schematic of Buzzer Circuit </figcaption>
</figure>

*Notice: while it is a diode like the LEDs, buzzers are more fragile than the LEDS are. If you set up the buzzer's polarity  in the wrong direction, the buzzer could break. To avoid this, ensure that it is going in the right direction by pointing the cathode (the side indicated as "positive" on the top of the component) to the positive side of the circuit. Hopefully though, even if the buzzer breaks, electricity will still flow, so the rest of the circuit should still work.*

## Further Exploration

Using these bins of random components, build your own circuit. For the components you chose, how do they work? What interesting thing can you do with these components? 

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/extra_components.jpg %}">
</figure>

Some ideas:
- LEDs in a line, in a matrix.
- Charge capacitors and discharge them across LEDs
-	Figure out how to connect a potentiometer (variable resistor) and how to use it to dim an LED.

After trying something try drawing the schematic of what you made.

If you want to do this more on your own, you can also visit the ECEn shop to buy any number of other parts. Almost any part you can think of comes in a version that will fit on a breadboard.

## Additional Information and Resources

### Help Video

<div style="display: flex; justify-content: center;">
    <iframe width="1280" 
            height="720" 
            src="https://www.youtube.com/embed/y2JopR6cwqk?si=BbLc3-5RrFuNJg5C" 
            title="Breadboard lab - Youtube Player" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
            referrerpolicy="strict-origin-when-cross-origin" 
            allowfullscreen>
    </iframe>
</div>

### Breadboards

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/front_breadboard.jpg %}">
  <figcaption style="text-align: center;"><strong></strong> A picture of a breadboard.</figcaption>
</figure>

Breadboards function in different rows and columns, commonly referred to as **busses**. All the pinholes on the breadboard that are connected to one another make up a single bus. If two wires or components are plugged into the same bus, they are connected to each other at those points. The busses that run along the long sides, for example, are referred to as the **power rails**. These power busses are marked by red and blue lines, which serve to help keep track of positive and negative polarities when powered elements are used in the circuit. 

 *<b>Note</b>: While busses have helpful notation, there are no rules specifically forcing you to plug things in correctly. Always make sure you double check the polarity and pins you choose when plugging in components to avoid damaging parts.*

In contrast to the power rails along the long side, **terminal strips** are busses that run perpendicular to the power rails along the short sides of the breadboard. These are marked by numbers on the ends of some of the terminal strips. There are two sets of terminal strip rows which are separated by the **DIP Support** (Dual In-line Package), a measured gap that allows for more circuit components to fit nicely across multiple terminal strips. Traditionally, components that don't supply power are plugged into the terminal strips, which are, in turn, connected to the power rails by wires or resistors that then receive the power from somewhere off the breadboard. Another way to picture how this works is to look at the inside of the breadboard itself:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/back_breadboard.jpg %}">
  <figcaption style="text-align: center;"><strong></strong> Picture of the inside and back of a breadboard</figcaption>
</figure>

Breadboard busses are notable as they support connections without requiring you to manually attach every component with solder or another permanent method. What we will be doing today is utilizing a breadboard to create various circuits.


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
