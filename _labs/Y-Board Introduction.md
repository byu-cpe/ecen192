---
title: Y-Board Introduction
number: 6
layout: lab
---

## Overview
This lab will introduce you to the Y-badge and how to code it. We will begin with learning how to code LEDs and buttons and upload it to the Y-badge. 

## Background/Preparation
- You should have finished the previous lab for a software and coding intro.
- You should have the student code cloned from github open in VS Code.


## Equipment and Materials
- Y-Badge
- USB-C cord

# Procedure

**As you go through this lab, copy the example code into the respective section on VS Code to explore how each part works.** Don't forget to uncomment the correct function under the `Y_Badge_Intro()` section.

## Part 1 - LED Exploration
- Each LED, labeled LED1 to LED20, are RGB (red-green-blue) LEDs, meaning that they are actually three smaller red, green, and blue lights packaged together. For each LED, you can set the brightness of the red, green, and blue lights individually, making the LED appear to be any color you like.

### Functions
The function to set an LED looks like this:

`leds_set_color(<LED number>, <red>, <green>, <blue>);` 

- The `<LED number>` can be any value from 1 to 20.
- The red, green, and blue values represent the brightness of that color and can be any value from 0 to 255.

### Turn on an LED
To make LED3 display bright red, you should use this statement in your code (don’t forget to add the semicolon):

`leds_set_color(3, 255, 0, 0);`

To make LED15 display bright yellow, you should turn on the red and green pixels to max brightness:

`leds_set_color(15, 255, 255, 0);`

Copy these two lines of code into the `led_exploration()` function in VS Code. Don’t forget to click “upload” in the top right corner dropdown to program your board with new code!

### Challenge 1
- Turn on all LEDs with different colors (maybe you can have a progression of colors going from pure red to pure blue.) Show a neighbor your LEDs.
    - Hint: You can copy and paste with Ctrl+C and Ctrl+V and change the LED numbers and colors



## Part 2 - Loops
### While Loops
While loops are loops that run the code inside them until a certain condition is met. We can also use while loops to make our code run forever, which we will use in Part 3.

What if we wanted to use a while loop to make the first 10 leds blink one time each, in sequence? We could do something like the following:
```
int currentLed = 1;
while(currentLed <= 10) {
    leds_set_color(currentLed, 255, 0, 0);
    delay(250);
    leds_set_color(currentLed, 0, 0, 0);
    currentLed++;
}
```
- This loop has a loop condition that isn’t always true, because we increment the value of currentLed every time it runs using currentLed++;. We want it to run as long as currentLed <= 10 is true. Once currentLed is 11 or larger, the loop won’t run again.
- The `delay(250)` means it will wait for 250 ms, or a quarter of a second, before turning the next LED on.

Copy this code into the `loops_exploration()` function, and don't forget to change which funtion is commented out under `Y_Badge_Intro()`. Also feel free to change the number of LED or the colors. 

### For Loops
A for loop to do the same thing as above looks like the following:
```
for(int currentLed = 1; currentLed <= 10; currentLed++) {
    leds_set_color(currentLed, 255, 0, 0);
    delay(250);
    leds_set_color(currentLed, 0, 0, 0);
}
```
- Our code to make the first 10 leds blink using a `while` loop is a little clunky. Did you notice that we had to declare a variable outside of our loop called `currentLed` to keep track of our condition? And then we had to increment it inside of our loop. That’s a little confusing.

- `for` loops and `while` loops can do the same things, but `for` loops are better for running code a certain number of times and `while` loops are better for running code until a certain condition is met in our program.

- Notice the similarities between a `for` loop and a `while` loop. We still declare a variable called `currentLed`, we still have a **loop condition** that keeps track of whether the loop should run again, and we still increment `currentLed` every time the loop runs. But, we do all of that on a single line inside the parenthesis. This is a nice way to organize our code and keep track of our variable in one spot.

Replace the `while` loop with the `for` loop and upload the code. You should notice that it does the same thing.

### Examples
1. Use a loop to turn all the LEDs white
```
for(int currentLed = 1; currentLed <= 20; currentLed++) {
    leds_set_color(currentLed, 255, 255, 255);
}
```
- Notice that this loop goes from 1 to 20 for LED1 to LED20.

2. Make all the LEDs blink. On for 500ms then off for 500ms, repeated forever.
```
while(true){
    for(int currentLed = 1; currentLed <= 20; currentLed++) {
        leds_set_color(currentLed, 255, 255, 255);
    }
    delay(500);
    for(int currentLed = 1; currentLed <= 20; currentLed++) {
        leds_set_color(currentLed, 0, 0, 0);
    }
    delay(500);
}
```
- Note that you can also nest for loops inside of while loops.

Add the example code to your own under the `loops_exploration` function to test it out. Feel free to change the delay time or colors of the LEDs as you wish.

### Challenge 2
- Make a single LED circle the board continueously. Use whatever color or delay time you wish and show a neighbor when you have completed this challenge.
    - Hint: use the code from the For Loops section as a base


## Part 3 - Buttons and Switches
### Functions
The function to determine if a button is pressed is:

`buttons_get(<button_number>);`

And the function to determine if a switch is ON is:

`switches_get(<switch_number>);`

Each of these functions returns `true` if the button/switch is pressed or ON, and `false` otherwise. `<button_number>` or `<switch_number>` should be the number of the button or switch whose position you want to check as an `int` (eg. 1, 2, or 3).

### What are Conditionals?
We use **if statements** to evaluate **conditionals** that are `true` or `false`:

```
if (buttons_get(1)) {
    leds_set_color(1, 255, 0, 0);
}
```
- If Button1 is pressed, `buttons_get()` will return a `true`. 
- This **if statement** can also be written as `if (buttons_get(1)==true)`, but the `true` is implied in the **if statement** above.

Additionally, we can chain conditionals together using `&&` or `||`. The `&&` symbol is called a “logical AND”, and the `||` symbol is called “logical OR”. Here’s an example of using each:

```
if(buttons_get(1) && buttons_get(2)) {
    leds_set_color(1, 255, 0, 0);
}

if(switches_get(1) || switches_get(2)) {
    leds_set_color(1, 0, 0, 255);
}
```
You don't need to upload this code, so continue to the next section and upload the example code.

### Examples
We can use an `else` block to make the board do something else when the `if` block is `false`. The infinite `while(true)` loop here is very important because you want the code to *continuously check* the state of Button1.

```
while(true) {
    if (buttons_get(1)) {
        leds_set_color(1, 255, 0, 0);
    } else {
        leds_set_color(1, 0, 0, 0);
    }
}
```
- This code says that the LED will only be on when the button is being pressed. Otherwise, it will turn off.

Copy this code into the `button_exploration()` function and upload it. Don't forget to change which funtion is commented out under `Y_Badge_Intro()`. Also feel free to change the buttons or LED colors. 

We can chain as many conditionals together as we want by using `else if` blocks:

```
while (true) {
    if (buttons_get(1) && buttons_get(2)) {
        leds_set_color(1, 255, 0, 0);
    } else if (buttons_get(2) && buttons_get(3)) {
        leds_set_color(1, 255, 255, 0);
    } else {
        leds_set_color(1, 0, 0, 0);
    }
}
```
Replace the previous example with this code and upload it. 

Let’s try one final example using a switch instead of a button:
```
while (true) {
    if(switches_get(2)) {
        while(switches_get(2)) {
            leds_set_color(1, 255, 0, 0);
        }
    } else {
        while(switches_get(2) == false) {
            leds_set_color(1, 0, 0, 0);
        }
    }
}
```
- Notice that there is an extra `while` loop inside the **if statments**. This code does the same thing as the first example, but with a switch instead.

Once more, replace the previous example with this code and upload it, and change the switch number or LED colors as you wish. 

### Challenge 3
- Use multiple buttons and/or switches and their combinations to turn on different LEDs. Turn on at least 3 LEDs. Show a neighbor what you chose to do.
    - Hint: use 3 separate if/else statements



## Part 4 - Your Own Challenge
- Come up with your own challenge to combine the use of LEDs, buttons, switches, and loops. Report your idea in your lab submission.

- Examples: 
    - Use a switch to change which direction the LED circles the board.
    - Use a button to increment the color of all LEDs little by little from pure red to pure blue
    - Anything else you can think of

## Post-Lab Work
Show your friend or roommate your project and quickly explain to them how it works. Answer any questions they have to the best of your ability, and be prepared to report in class.


