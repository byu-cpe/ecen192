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

**There is a Help Video section at the bottom that goes with this lab. Some instructions may require you to watch the video or will be easier to understand when following along with the video.**

## Background/Preparation

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

## Equipment and Materials

- breadboard
- at least four LED lights
- at least four resistors
- button
- wires to connect components
- DIP Switch
- power source (battery, connector and screw terminals)


## Procedure

### Simple LED Circuit

Start by inserting the screw terminal into the red and blue power rails *(see the image below)*; then put red and black wires into the screw terminals and tighten the screws so that you can connect the battery to the breadboard easier.

Now we will set up the first circuit. Do this by connecting a resistor from one of the power rails to a terminal strip, and a wire from the other power rail to another terminal strip. Now you must connect the blue (square) LED by placing one end in each of the terminal strips you are using. 

*Before you plug the LED in, notice - Light-Emitting Diodes, are unidirectional, meaning that they only allow current to flow in one direction. Most manufacturers denote which side is which by making the positive node (or cathode) longer than the negative node (or anode). Ensure that your LED is plugged in the right direction!*

Our LEDs are less sensitive than other diodes, so if plugged in the wrong way, there is less risk of breaking, but the solution, but you will notice that the LED won't turn on unless you plug it in right.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/circuit1.jpg %}">
  <figcaption style="text-align: center;"><strong></strong> First circuit picture with one blue led.</figcaption>
</figure>


### Add A Button

Next, add a button inline in the circuit to control the light. You can put it anywhere in the circuit because any break in current will prevent the LED from lighting up.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/circuit3.jpg %}">
  <figcaption style="text-align: center;"><strong></strong> Second circuit picture with a button.</figcaption>
</figure>


### Traffic Light Circuit

Next, we will build a circuit like a traffic light. To do this, we will utilize a dipswitch (a name for that type of switch) placed over the DIP Support gap. Again, see the image below for help. While not always legible, the dipswitch should have an arrow labeled "ON" that will help with turning on and off the lights as desired. Make sure when you toggle the switch, you fully push it to one side or the other. DIP switches can be quite fickle and can get stuck halfway between on and off if not fully switched in one direction or the other. Also note that the dipswitch creates a physical break in the circuit, so it doesn't matter which direction you place over the DIP support.

Sometimes your components can start to be difficult to insert and remove from the breadboard. To help this, straighten out the pins by loosely pinching each one with your fingers and running them along the length of them until it becomes easier to work with.

Repeating the process from the one LED, place three other LEDs (ideally red, yellow and green for the traffic light effect) inline with the dipswitch to produce a circuit that looks something like this:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/02_breadboard/circuit2.jpg %}">
  <figcaption style="text-align: center;"><strong></strong> Third circuit picture.</figcaption>
</figure>

## Further Exploration

Using the components that we have given you, make a new circuit according to your own design! You could use different color LEDs, new layouts, as well as buttons, switches, or the buzzer; so long as it is according to your own design! If you want to do this more on your own, you can also visit the ECEn shop to buy any number of other parts. Almost any part you can think of comes in a version that will fit on a breadboard.

## Post-lab Work

Recall how the square LED was much easier to see, and much nicer to look at than the other LEDs. This is because of how its cover diffuses light. For the post-lab, find an object at home that will work well as a light diffuser to put over one of your other LEDs. *(Hint: Try to find something translucent. If it is too solid, the light won't be able to get through, but if it is too clear, the light won't disperse as desired)*. Make the LED circuit again, and see how you can change the way the LED appears and lights up a space based on the diffuser you use.

## Additional Help Video

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
