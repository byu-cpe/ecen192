---
title: "Y-Board: Networking"
number: 9
layout: lab
---
## Overview: 
In this lab, you will learn the basics of computer networking and the structure of Wi-Fi packets. You will then use this to turn your y-board into a Wi-Fi sniffer, that will be able to identify the unique signature of any device communicating on any network. Lastly, you will connect your y-board to the BYU Wi-Fi network and control it from the internet. This lab will transition into the next lab where you will explore vulnerabilities in this code and hack each other’s boards.

## Introduction: 
You’ve probably heard the terms Wi-Fi and the internet and likely use them daily. However, these terms are not synonymous and are often confused. Wi-Fi is a protocol for transmitting data over electromagnetic waves from a device to an access point, typically a router in your home. Your router connects via a modem to the internet, a global network of connected computers and servers. While you might be most familiar with accessing the internet through a browser, there are many other ways to do so, one of which we will explore today using your y-board.

A Wi-Fi transmission consists of packets, which are bundles of data that inform the receiver about the data being sent. Each packet is composed of a header, payload, and footer. The header contains information about the transmission's source and destination, as well as details about the actual data (payload). The footer includes checksums, which ensure the data was sent correctly without errors.

## Lab Procedure:
### Format your SD Card
To build our Wi-Fi sniffer, we need a database of device manufacturers. This would be too much data to put into code, so we are going to load it on the SD card. On one of the lab machines, insert your SD card into the reader and run the following lines of code
***
wget https://coolurlforthesdimage.com
dd if=~/sd.img of=dev/sdb bs=4M status=progress
***
This whole process should take about 3-4 minutes. Once you are done, you can eject the SD card and insert it into your y-board.

### Wi-Fi Sniffer
Upload the code for lab as usual. If you need help, check out the documentation for the previous labs on how to do this. Make sure switch two is in the down position to enable sniffing mode.

A Wi-Fi packet contains a unique signature called a MAC address, which identifies the device that sent it. The first six digits of the MAC address represent the device manufacturer. By reading this address, we can identify the manufacturer of the device.

Your y-board will now listen for packets transmitted on any Wi-Fi network. While the actual data is encrypted, the header is not, allowing the board to determine the type of device that sent it. The lights on your board will light up between red (for a strong intercepted signal) to blue (a weak one). Your board is keeping a list of the most recent senders and assigns an LED to each one of them. Two of the most common are listed by their manufacturer name on the screen.

On campus, especially in the EB, you may notice Hewlett Packard Enterprises frequently due to their Wi-Fi access points in the building.

Walk around for a bit, see what different devices you can pick up and at what strength. Can you get it to see your phone? What about another y-badge? It will appear as Espressif Inc.

### Explore Channels

Now move switch one in the up position. You will now be able to set the Wi-Fi channel that you are listening on. There are 11 Wi-Fi channels that are used in the US. You will find that some channels have much more traffic than others. Can you find which ones?

### Connect to Server
Being able to listen to other people’s Wi-Fi traffic is great, but let’s get your board on the internet. Do this by flipping switch 2. Now you will see that BYU servers assigned your device an IP address and a password. 

Your IP address is how every device on the BYU network knows who you are and how to talk to you. We are now going to control your device remotely. Navigate to ecen192.byu.edu. From there, you will be able to login with your username and password and then control the color of the lights on your board.

We will pick up from here next week!

## Further Exploration:
Try using the Wi-Fi sniffer in different locations, such as a public place off-campus or your apartment. What kind of devices can you detect there? Can you locate a device by its signal strength? This might be challenging, but in areas with fewer Wi-Fi devices, it is possible.