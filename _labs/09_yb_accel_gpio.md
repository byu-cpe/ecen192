---
title: "Y-Board Accelerometer & GPIO"
number: 9
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

This lab is about reading data off an accelerometer and sending that information to an off-board device using the GPIO pins. In this case, we are sending the data to a small OLED screen that displays how much acceleration the board is experiencing in real time in 3 dimensional space.

**There is a Help Video section at the bottom that goes with this lab. Some instructions may require you to watch the video or will be easier to understand when following along with the video.** 

<!-- Put "oled_accel.jpg" here -->
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/08_yb_accel_gpio/oled_accel.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A picture of the OLED screen we will be using.</figcaption>
</figure>

## Background/Preparation

An accelerometer (“acceler-“ and “-meter”) is a circuit chip that measures the acceleration that chip experiences (from the inside). The gist of how one works is that there is a very small, delicate spring inside of the chip that also acts as part of a circuit. As that spring compresses or relaxes, the properties of the circuit change in a way that can be revealed by measuring the voltage in the circuit.

<!-- Put "accel_mems.png" alongside "accel_chip.png" here -->
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/08_yb_accel_gpio/accel_mems.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A diagram of how an accelerometer chip works.</figcaption>
</figure>

“GPIO” stands for general purpose input & output. From an engineer’s perspective, GPIO pins are pins that the engineer can program to do pretty much whatever he/she wants. They’re pins that don’t have a predetermined purpose, allowing the engineer flexibility to incorporate and interface with new components to meet his/her project-specific needs.

The GPIO pins on your Y-board are found on the back. While there are six pins, only three of them are actually GPIO. This is because three of them are reserved as 5V, 3.3V, and GND. Two of the GPIO pins can additionally support a communication named I2C. We rely on those pins’ support of that protocol in order to send data from the accelerometer to the off-board OLED display.

<!-- Put "gpio.png" here -->
<!-- <figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/08_yb_accel_gpio/gpio.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A picture of the back of the Y-Board showing where the GPIO pins are.</figcaption>
</figure> -->

## Equipment and Materials

•	(1) Y-board
•	(1) OLED display
•	(4) Jumper wires
•	(1) Breadboard (if you prefer)
•	(1) USB data cable

## Procedure

### Getting the starter code

1. Open vs code.
2. Click the "Source Control" button on the left toolbar.
3. Click "Clone Repository".
  *Note: if you do not see the option to Clone Repository then you will need to open a new window of VisualStudios Code (VSCode)*
4. Enter the url: [https://github.com/byu-ecen-192/y-board-accelerometer-gpio.git](https://github.com/byu-ecen-192/y-board-accelerometer-gpio.git) and hit Enter.
5. A window will open and ask you to select the destination folder. Choose where to put it.
6. Open the PlatformIO Project.
7. Build and Upload the code in the main.c file to the Y-Board.

### Hardware Setup

1.	Plug your 4 jumper wires into the OLED screen
<!-- Put "oled.jpg" and "oled_i2c.jpg" here -->
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/08_yb_accel_gpio/oled_i2c.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> The OLED screen with the jumper wires plugged in.</figcaption>
</figure>

2.	Plug other side of those jumpers into the proper GPIO Pins (see key below)
<!-- Put "i2c_label.png" here -->
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/08_yb_accel_gpio/i2c_label.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A diagram of the GPIO pins and where to plug them in.</figcaption>
</figure>

If you used the same colors as I did, it should look like the following:
<!-- Put "i2c_connection.jpg" here -->
<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/08_yb_accel_gpio/i2c_connection.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> The OLED screen with the jumper wires plugged in.</figcaption>
</figure>
 
### Tinker

Try out something cool yourself! I’ll list a few ideas below.
1.	Change the text at the top of the OLED (easy)
2.	Draw new shapes on the OLED (medium)
3.	Use the accelerometer data to tune the brightness of an LED (medium)
4.	Use each of the 3 axes of data to scale the brightness of red, green, and blue independently on an LED (medium)
5.	Connect the potentiometer to control the rotation of the 3D axis (hard)
6.	Program the buttons and/or switches to redefine which directions are ‘x’, ‘y’, and ‘z’ (hard)
7.	Reprogram the magnitude vector to display each component vector (hard)

## Post-Lab Work (Optional)

If you have a pair, slap some sunglasses on your face a take an epic selfie with your cool lab. Feel free to post on social media or share with your friends. #byuecen

## Rubric/Submission

Go to LearningSuite and submit your attendance and feedback for this lab

## Help Video

<div style="display: flex; justify-content: center;">
    <iframe width="1280" 
            height="720" 
            src="https://www.youtube.com/embed/SZpVgEouGyI?si=UafM6q4VYgvhAkKd" 
            title="Cyber lab - Youtube Player" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
            referrerpolicy="strict-origin-when-cross-origin" 
            allowfullscreen>
    </iframe>
</div> 

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
