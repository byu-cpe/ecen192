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

In this lab, you will learn the basics of computer networking and the structure of Wi-Fi packets. You will then use this to turn your y-board into a Wi-Fi sniffer, that will be able to identify the unique signature of any device communicating a Wi-Fi network. Lastly, you will connect your y-board to the BYU Wi-Fi network and control it from the internet. This lab will transition into next week’s lab where you will explore vulnerabilities in this code and hack each other’s boards.

## Background/Preparation

You’ve probably heard the terms Wi-Fi and the internet and likely use them daily. However, these terms are not synonymous and are often confused. **Wi-Fi** is a protocol for transmitting data over electromagnetic waves from a user device (i.e. your phone or laptop) to an access point, typically a router in your home. Your router then connects via a modem to the **internet**, a global network of connected computers and servers. In short, Wi-Fi is the way you send data wirelessly and can access the internet, and the internet is a massive web of computers connected all around the world. While you might be most familiar with accessing the internet through a browser, there are many other ways to do so, one of which we will explore today using your y-board.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/09_yb_networking/wifi_diagram.jpg %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> A diagram of the internet "pathway" between your phone and the rest of the internet. </figcaption>
</figure>

A Wi-Fi transmission consists of packets, which are bundles of data that contains the message being sent as well as supplemental information for the receiver. Each packet is composed of a header, payload, and footer. The header contains information about the transmission's source and destination, as well as details about the actual data (payload). The footer includes checksums, which ensure the data was sent correctly without errors.

## Procedure

### Getting the starter code:

1. Open vs code.
2. Click the “Source Control” button on the left toolbar.
3. Click “Clone Repository.”
  *Note: if you do not see the option to Clone Repository then you will need to open a new window of VisualStudios Code (VSCode)*
4. Enter the url: [https://github.com/byu-ecen-192/y-board-networking.git](https://github.com/byu-ecen-192/y-board-networking.git) and hit Enter.
5. A window will open and ask you to select the destination folder. Choose where to put it.
6. Open the PlatformIO Project.
7. Build and Upload the code in the main.c file to the Y-Board.

### Wifi Sniffer

After uploading the code, it will turn your y-board into a Wi-Fi sniffer, which is a device that can listen to any Wi-Fi packets being sent, no matter the Wi-Fi network it is being sent on. A lot of the data in a Wi-Fi packet is encrypted, so that an attacker cannot intercept your information. However, there are some things we can tell from a sniffed packet. Every Wi-Fi packet contains a unique signature called a MAC address, which identifies the device that sent it. Every device in the world has a unique MAC address that no one shares so we can tell when the same device has sent multiple packets. Additionally, the first six digits of the MAC address uniquely identify the device manufacturer and by reading this, we can identify what company or organization made the device.

Make sure switch 2 is in the down position before turning the y-board on to enable sniffing mode. Also make sure your SD card is inserted. If it is not, press the reset button after inserting it. If your screen says “OUI Lookup not available,” ask a TA and they can help. Once on, you will see a bunch of blinking lights ranging from red (for a strong intercepted signal) to blue (a weak one). The knob controls the LED brightness. Your board is keeping a list of the most recent senders and assigns an LED to each one of them. Thus, when the same light blinks several times, it is the same device sending multiple packets. Two of the most recent ones are listed by their manufacturer name on the screen.

On campus, especially in the EB, you may notice Hewlett Packard Enterprises frequently because they are the manufacturer of the Wi-Fi access points in the building.

Walk around for a bit, see what different devices you can pick up and at what strength. Can you get it to see your phone? What about another y-badge? It will appear as Espressif Inc

### Explore Channels

Just as there are different radio stations, associated with different radio frequencies, there are different Wi-Fi channels depending on the frequency of the electromagnetic wave they are sent on. Up until now, we were only listening on channel 1, which ranges from 2.401 to 2.423 GHz.

Move switch 1 to the up position. This will bring up a menu to set the Wi-Fi channel that you are listening on by pressing the buttons. Flip the switch back to return to regular sniffing mode. Below is an image of the different Wi-Fi channels on the electromagnetic spectrum. While there are 14 channels, in the US, we only use the first 11. You will see that there is a lot of overlap between the channels. This is actually ok and will still work but can cause problems if too many devices are transmitting on adjacent channels. Because of this, the commonly used channels by most devices are spaced out. Can you find the channels with the most traffic? There should be 3.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/09_yb_networking/2-4-ghz_channels.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> Diagram of the 2.4 GHz Wi-Fi channels</figcaption>
</figure>

### Connect to the Server

Being able to listen to other people’s Wi-Fi traffic is great, but let’s get your board on the network. Do this by flipping switch 2. Now you will see that BYU servers assigned your device an IP address and a password. 

Your IP address is how every device on the BYU network or any network for that matter knows who you are and how to talk to you. We are now going to control your device remotely. Navigate to [this website](http://ecen192.byu.edu/control_device). Here you will be able to enter the ip address and password as seen on your display and then control the color of the lights on your board. Note: this will only work if you are connected to BYU's Wi-Fi network.

Try changing the color of your board remotely from the computer. We will pick up from here next week!

## Further Exploration

Try using the Wi-Fi sniffer in different locations, such as a public place off-campus or your apartment. What kind of devices can you detect there? Can you locate a device by its signal strength? This might be challenging, but in areas with fewer Wi-Fi devices, it is possible.

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