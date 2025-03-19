---
title: "Y-Board Cybersecurity"
number: 11
layout: lab
---

<!-- There is no dynamic figures script on this page, as there are no elements. If you add elements, please go to another page and copy the notice and script at the top and bottom of the page, to keep the formatting of figures consistent. -->

## Procedure

This lab introduces basic de-hashing and the CIA triad. Activities are strictly limited to designated devices for educational purposes only. **Unauthorized hacking is illegal and may result in disciplinary and legal consequences. Always act ethically**.

### Getting the starter code

· Open vs code.
· Click the "Source Control" button on the left toolbar.
· Click "Clone Repository".
  *Note: if you do not see the option to Clone Repository then you will need to open a new window of VisualStudios Code (VSCode)*
· Enter the url: [https://github.com/byu-ecen-192/y-board-cybersecurity](https://github.com/byu-ecen-192/   y-board-cybersecurity) and hit Enter.
· A window will open and ask you to select the destination folder. Choose where to put it.
· Open the PlatformIO Project.
· Build and Upload the code in the main.cpp file to the Y-Board.

### Webpage Exploration

· Open the Y-Board webpage http://ecen192.byu.edu/
· Log in and explore the site.
· Click on the “Send command” link in the upper right coner.
· Look on your LED screen to find your IP address and password
· Change the color of your Y-Board LEDs like last lab

### Webpage Hacking

· Enter /robots.txt at the end of the domain (i.e. http://ecen192.byu.edu/robots.txt)
· Look for suspicious pages
    - Hint: Explore the disallowed pages
    - See more hints in “additional hints and things to hack” section at bottom of page.

### Breach of Confidentiality (seeing something you shouldn’t see)

· Find the IP address of a fellow student on their LED screen
· Input your fellow student’s IP address to receive their password hash
· Use the following website to reveal the hashed password:
    - https://hashes.com/en/decrypt/hash
    
### Breach of Integrity (changing something that you shouldn’t change)

· Return to the Y-Board section of the webpage
· Input your partner’s Y-Board IP address and the password you de-hashed
· Change the LED colors of your partner’s badge

### Additional Hints and Things to Try and Hack

· One of the disallowed pages has a list of commands
    - (using pretty print makes the pages easier to read)
· If you found the /get_commands page you will find a list of commands
· In there you can find a description of how the commands work and an example url
· Make changes to the url and put it in your search bar to run the command and parameters you’d like to get the command working
    - (This is added to the back of http://ecen192.byu.edu/ like you would do for /robots.txt and other pages)
· Example of how the example on that page will look like in use:
    - http://ecen192.byu.edu/control_device?control_type=change_led_color&ip_address=192.168.1.1&password=password123&color=%233cec51#3cec51
· Page will display success Note: The Rickroll is iffy, it may not work despite saying success, just check the last hacked

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
