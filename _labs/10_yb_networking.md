---
title: "Y-Board Networking"
number: 10
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

In this lab, you will explore the fundamentals of computer networking and the structure of Wi-Fi packets. Using prewritten code, you will upload a program to your Y-Board that turns it into a Wi-Fi sniffer, allowing it to detect the unique signatures of devices communicating on a Wi-Fi network. Finally, you will connect your Y-Board to the BYU Wi-Fi network and control it remotely over the internet.


## Procedure

### Getting the starter code

1. Open **vs code**.
2. Click the "**Source Control**" button on the left toolbar.
3. Click "**Clone Repository**".
  *Note: if you do not see the option to Clone Repository then you will need to open a new window of VisualStudios Code (VSCode)*
1. Enter the url: [https://github.com/byu-ecen-192/y-board-networking.git](https://github.com/byu-ecen-192/y-board-networking.git) and hit Enter.
2. A window will open and ask you to select the destination folder. Choose where to put it.
3. Open the **PlatformIO Project**.
4. Build and Upload the code in the **main.c** file to the Y-Board.

### Hallway walk – Wi-Fi detection

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/09_yb_networking/wifiDeection.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Set up for WIFI Sniffer on Board </figcaption>
</figure>

· Ensure the code is uploaded to the Y-Board. The screen should display live updates on detected Wi-Fi packets.
  - If the screen is blank, press the Y-Board reset button.

· Experiment with switching the Wi-Fi channel to monitor packet transmissions on different channels.
  - (Refer to the image above for switch settings.)

· Understanding the blinking LEDs:
  - When a Wi-Fi packet is received, the code analyzes the signal strength and assigns it a color:
    - Cool colors (e.g., blue): Weak signals
    - Warm colors (e.g., red): Strong signals
  - For example:
    - A flashing blue LED1 means the first detected packet had a weak signal.
    - A flashing red LED2 means the next detected packet had a strong signal.
  - You can adjust the LED brightness by turning the Y-Board’s potentiometer.

· Borrow AAA batteries from the back of the class, insert them into your Y-Board, and walk through the **Engineering Building/Clyde Building** while monitoring Wi-Fi packets.
  - Channels **1, 6, and 11** are the most commonly used for transmission. Verify this.
  - Check if other channels have little to no traffic.
  - Some research labs transmit on **channel 3**—try to locate them. (Hint: Check the hallways on the 4th floor of the Clyde Building.)

· Return after approximately **10 minutes**.

· **Return the batteries** before continuing.

### Connect the Y-board to the Internet

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/09_yb_networking/InternetConnection.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> How to connect to the Internet </figcaption>
</figure>

· Set the switches for internet connection:
    **Switch 1**: Down 
    **Switch 2**: Up

· If the Y-Board LEDs flash white and the IP address does not appear on the screen, press the **reset button** on your Y-Board.

· Open a web browser and navigate to:
    http://ecen192.byu.edu/control_device

· Enter the **IP address** and **password** for your Y-Board.

· Once connected to the internet, you can control your Y-Board using the website.

· Experiment by changing the LED colors:
    Select a color on the website. 
    Click the **Send Command** button.


## Background/Preparation

The terms **Wi-Fi** and the **internet** are often used interchangeably, but they refer to different things.
· **Wi-Fi** is a wireless protocol that enables data transmission between a user device (e.g., a phone or laptop) and an access point (such as a router).
· The **internet** is a vast global network of interconnected computers and servers. A router connects to the internet via a modem, allowing devices on a local network to communicate with the broader world.

While most people access the internet through a web browser, there are many other ways to interact with networked systems. In this lab, you are exploring one such method using the Y-Board.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/09_yb_networking/wifi_diagram.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A diagram of the internet "pathway" between your phone and the rest of the internet. </figcaption>
</figure>

A Wi-Fi transmission consists of packets, which are bundles of data that contains the message being sent as well as supplemental information for the receiver. Each packet is composed of a header, payload, and footer. The header contains information about the transmission's source and destination, as well as details about the actual data (payload). The footer includes checksums, which ensure the data was sent correctly without errors.


## Wi-Fi Sniffer

A Wi-Fi sniffer is a device that listens to Wi-Fi packets being transmitted, regardless of the network they are on. While much of the data in a Wi-Fi packet is encrypted to protect user information, certain details remain visible. One such detail is the **MAC address**, a unique identifier assigned to every device. The first six digits of a MAC address indicate the device manufacturer, allowing us to identify the company or organization that produced the device.

On campus, particularly in the Engineering Building, you may notice **Hewlett Packard Enterprises** frequently appearing—these MAC addresses belong to the Wi-Fi access points in the building. Other common manufacturers include **Espressif Inc.**, which corresponds to Y-Boards and certain IoT devices.


## Explore Channels

Just like radio stations operate on different frequencies, Wi-Fi networks transmit on different channels. In the **2.4 GHz** frequency band, there are **14 channels**, but in the U.S., only **channels 1 through 11** are commonly used. Since Wi-Fi signals overlap, devices tend to use non-overlapping channels—**1, 6, and 11**—to minimize interference.

Understanding channel usage can provide insights into network congestion. If too many devices transmit on adjacent channels, performance can degrade. Observing which channels have the most traffic can help in optimizing network performance or identifying specific Wi-Fi sources.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/09_yb_networking/2-4-ghz_channels.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Diagram of the 2.4 GHz Wi-Fi channels</figcaption>
</figure>


## Connect to the Server

Wi-Fi sniffing allows you to observe packet transmissions, but to actively communicate over a network, a device must connect to it. When a device connects to a network, it is assigned an **IP address**, which acts as its unique identifier on that network. This address allows other devices, servers, and systems to communicate with it.

At BYU, the university's network infrastructure assigns IP addresses to connected devices. Once a device is online, it can be remotely accessed and controlled using network-based commands. This concept is fundamental to many applications, from IoT devices to remote


## Further Exploration

Wi-Fi sniffing can be tested in different environments to observe variations in network activity. In a public space or an apartment complex, you might detect a wider range of devices and manufacturers. Signal strength can also provide clues about a device’s proximity—although tracking a specific device this way can be challenging in high-traffic areas, it is more feasible in locations with fewer Wi-Fi transmissions.

