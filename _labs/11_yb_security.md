---
title: "Y-Board Cybersecurity"
number: 11
layout: lab
---

<!-- There is no dynamic figures script on this page, as there are no elements. If you add elements, please go to another page and copy the notice and script at the top and bottom of the page, to keep the formatting of figures consistent. -->

### Notice

<span style="color:LightCoral">This cybersecurity lab provides students with hands-on experience in basic hacking within a controlled environment. All activities are confined to designated devices and systems for educational purposes only. Unauthorized hacking into any other systems, networks, or devices is strictly prohibited.
Remember, hacking without permission is illegal and can result in severe legal consequences. Always act ethically and respect the boundaries of this lab. Violations of these guidelines may lead to disciplinary action and potential legal repercussions.</span>

## Overview

This lab will introduce you to basic de-hashing and the CIA triangle.

**There is a Help Video section at the bottom that goes with this lab. Some intructions may require you to watch the video or will be easier to understand when following along with the video.**


## Equipment and Materials

- Y-Board
- LED screen
- Computer or Phone

## Procedure

### Getting the starter code

1. Open vs code.
2. Click the "Source Control" button on the left toolbar.
3. Click "Clone Repository".
  *Note: if you do not see the option to Clone Repository then you will need to open a new window of VisualStudios Code (VSCode)*
4. Enter the url: [https://github.com/byu-ecen-192/y-board-cybersecurity](https://github.com/byu-ecen-192/y-board-cybersecurity) and hit Enter.
5. A window will open and ask you to select the destination folder. Choose where to put it.
6. Open the PlatformIO Project.
7. Build and Upload the code in the main.c file to the Y-Board.

### Webpage Exploration

    1. Turn on Y-Board
    2. Open Y-Board webpage http://ecen192.byu.edu/ and log in
    3. Explore the site, click things
    4. Click on Y-Board button on webpage
    5. Look on your LED screen to find your IP address and password
    6. Change the color of your Y-Board LEDs like last lab

### Webpage Explotation

    1. Enter /robots.txt at the end of the domain (i.e. cloudflare.com/robots.txt)
    2. Look for suspicious pages
        a. Hint: Explore the disallowed pages

### Breach of Confidentiality (seeing something you shouldn’t see)

    1. Find the IP address of your partner on their LED screen
        a. Hint: Consider “shoulder-surfing” their LED screen
    2. Input your partner’s IP address to receive their password hash
    3. Use one of the following tools to reveal the hashed password: 
        a. DCode
        b. Hashes
    
### Breach of Integrity (changing something that you shouldn’t change)

    1. Return to the Y-Board section of the webpage
    2. Input your partner’s Y-Board IP address and the password you de-hashed
    3. Change the LED colors of your partner’s badge

### Challenges

    1. Scour the webpage to find easter eggs to send to your partner’s Y-Board 
        a. Hint: Consider checking other endpoints and disallowed paths

## Post-Lab Work

Show your friend or roommate your project and quickly explain to them how it works. Answer any questions they have to the best of your ability and be prepared to report in class.
The webpage and Y-Boards will be functional across BYU campus. Continue searching for easter eggs using the steps we followed. 

## Help Video

<div style="display: flex; justify-content: center;">
    <iframe width="1280" 
            height="720" 
            src="https://www.youtube.com/embed/4DeRN4ALcRQ?si=i2nqQcMMmTkkkoxv" 
            title="Cyber lab - Youtube Player" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
            referrerpolicy="strict-origin-when-cross-origin" 
            allowfullscreen>
    </iframe>
</div>
