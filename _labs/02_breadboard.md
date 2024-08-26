---
title: "Breadboard"
number: 2
layout: lab
---


## Overview
Breadboards are tools to implement circuits in various contexts, and are especially useful in prototyping and development contexts. In addition to breadboards, we will be using LEDs and wires to create three or four circuits to better understand how they function.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/breadboard/front_breadboard.jpg %}">
  <figcaption style="text-align: center;">Picture of a breadboard.</figcaption>
</figure>


## Background/Preparation
Breadboards function in different rows and columns, commonly referred to as busses. The busses that run along the long sides, for example, are referred to as the power rails. These are marked by the red and blue lines that are meant to help keep track of the positive and negative polarities of power supplied to the circuit.
Terminal strips are busses that run perpendicular to the power rails. These are marked by numbers on the ends of some of the terminal strips. They are also separated by the DIP (Dual In-line Package) Support, which allows for more complicated circuits and components. Traditionally, the non-power components are plugged into the terminal strips, which are, in turn, connected to the power rails by wires or resistors.
These busses are notable as they support connections without manually attaching every component. For example, if two wires or components are plugged into the power rail on one side that is marked with red, they are connected to each other. The same is true of each power rail and each separate terminal strip (again, marked by the numbers and separated by the DIP Support). Another way to picture the way this works is to look at the inside of the breadboard itself:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/breadboard/back_breadboard.jpg %}">
  <figcaption style="text-align: center;">Picture of the inside and back of a breadboard</figcaption>
</figure>

What we will be doing today is utilizing these principles to create various circuits.



## Equipment and Materials
- breadboard
- at least four LED lights
- at least four resistors
- wires to connect components
- DIP Switch
- power source (battery, connector and screw terminals)
- (optional) button
- (optional) buzzer

## Procedure

Start by inserting the red and black wires into the screw terminals and tighten the screws so that you can connect the battery to the breadboard easier.
Once that is done, you will be able to set up the first circuit. Do this by connecting the screw terminals to the power rails, as well as a resistor from one of the power rails, and a wire from the other. The other end of each should be plugged into neighboring terminal strips, along with the blue (square) LED in each of the terminal strips to connect them. If, when everything including the battery is plugged in as described, the LED does not light up, this is likely because of the LED itself. Light-Emitting Diodes, LEDs, like all diodes, are unidirectional. Our LEDs are less sensitive than other diodes, so if plugged in the wrong way, there is less risk of breaking, but the solution, just the same, is to reverse the direction; ensuring that the cathode, or side with the longer leg that happens to be positive, is on the side that goes to the positive end of the circuit, instead of the side of the circuit that goes to the negative end of the battery (where the anode goes). This is what the first circuit should look like.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/breadboard/circuit1.jpg %}">
  <figcaption style="text-align: center;">First circuit picture with one blue led.</figcaption>
</figure>

Next, we will build a circuit like a traffic light. To do this, we will utilize a dipswitch placed over the DIP Support. While not always legible, the dipswitch should have an arrow labeled "ON" that, while not necessary in orienting the component, will help with turning on and off the lights as desired. Do be sure that, when you desire to have the DIP switch set to on, it is all the way on. DIP switches can be quite fickle and look on, but be halfway between on and off (or the same but with an intended 'off' state).
If, by now, your components start to become difficult to insert and remove from the breadboard, simply straighten them out by loosely pinching each leg with your fingers and running the length until it becomes easier to work with.
Repeating the process from the one LED, place three other LEDs (ideally red, yellow and green for the traffic light effect) on the opposite side of the dipswitch to create a circuit that should look something like this:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/breadboard/circuit2.jpg %}">
  <figcaption style="text-align: center;">Second circuit picture.</figcaption>
</figure>

The third circuit is optional, but involves a button and a buzzer. A buzzer is a diode that produces sound and a button is like an on/off switch, but is only on while being held down. A note about the buzzer: while these are diodes, like LEDs, these are some of the more fickle variety like were mentioned. If you setup the buzzer going in the wrong direction, the buzzer could break. To avoid this, ensure that it is going in the right direction, with the cathode (the side indicated as "positive" on the top of the component) going to the positive side of the circuit. That said, even if the buzzer breaks, it will still allow for the flow of electricity, so you should still be able to get the circuit to work.
For this reason, as well as the involvement of the button, it will likely be more difficult to tell whether it is setup and oriented properly. For this reason, we will reuse the square LED from the first circuit so that we can tell with certainty that it works. Assuming that everything is spaced according to the unique size of each component, the circuit itself should look like this.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/breadboard/circuit3off.jpg %}">
  <figcaption style="text-align: center;">circuit in different states - off </figcaption>
</figure>

When the button is pressed, it should look like this and play a sound.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link assets/breadboard/circuit3on.jpg %}">
  <figcaption style="text-align: center;">circuit in different states - on </figcaption>
</figure>

Lastly, make a new circuit according to your own design! This could involve different color LEDs, new layouts, and a different number of LEDs, as well as buttons, switches, or even a buzzer; so long as it is according to your own design!


## Optional Out-of-Class Activities
Recall how the square LED was much easier to see, and much nicer to look at than the other LEDs. This is because of the way it diffuses light. For the post-lab, find an object at home that will work well as a light diffuser to put over one of your other LEDs. (Hint: Try to find something translucent. If it is too solid, the light won't be able to get through, but if it is too clear, the light won't disperse as desired).