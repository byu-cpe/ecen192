---
title: Y-Board Introduction
number: 5
layout: lab
---

## Overview:

In his lab you’ll be setting up your coding environment, and learning the basics of programming the microcontroller on the y-badge. The end product will be a comprehensive hardware test.

## Background:

**ATTENTION: Begin with step 1 and continue through step 2 until directed to circle back to the background section**

### 💻 Microcontrollers
A microcontroller is a compact computer on a chip. They’re used in things that need some level of intelligence to perform a function but don't require a whole computer. At the heart of a microcontroller is a central processing unit, or CPU. It’s much simpler than the CPU in your laptop or desktop but is optimized to perform tasks efficiently with limited resources. Microcontrollers come with their own memory to store the program (instructions) and to store data temporarily while it's running. They have built-in input/output interfaces, which means they can read signals from and send signals to other devices. For example, a microcontroller in a vending machine reads inputs from the buttons you press, and controls outputs like returning change or vending a snack.

Applications include, electric toothbrushes, wireless earbuds, microwaves, pacemakers, printers, anti-lock brakes, and many more.

The microcontroller we’ll be using for this class is an ESP32-S3 mini. This microcontroller has a dual-core microprocessor which means it can handle more complex tasks compared to single-core microcontrollers. It runs at a clock speed of up to 240 MHz, which is faster than other microcontrollers, allowing it to process data quickly. One neat feature that we’ll explore in future labs is its built-in support for Wi-Fi and Bluetooth. You can find the microcontroller located on the top left of your y-badge. The esp32 is connected to the various components (buttons, switches, leds etc) by through traces (which are like wires embedded into the printed circuit board). One is highlighted in red in this image:

<p align = "center">
<img src="{% link /assets/y-board_introduction/Traces.png %}" width="250"/>
</p>

For the rest of the labs in this course, we’ll be learning how to control different components on the y-badge with our microcontroller. To do this, we need to be able to give it instructions by writing and uploading a program. We’ll use visual studio code and an extension (platform io) to help us with this.

### 🌐 Github
During step 1, we clone a repository from github. Github is an online platform where developers store, share, and collaborate on code. When you "clone a repository," you're making a copy of someone else's project (which is stored on GitHub) onto your own computer. This lets you work on the project locally.

### 👽 PlatformIO
In step 2, we installed the PlatformIO extension. This will get the code we write, ready to be sent to the microcontroller. In every project going forward we’ll have a platformio.ini file. Let’s take a look at what’s inside of this one.

<p align = "center">
<img src="{% link /assets/y-board_introduction/iniFile.png %}" width="250"/>
</p>

Lines 11-14: These specify what kind of microcontroller we are uploading to and the format of code we are using.

Lines 16-21: These tell the compiler that we need to include extra files in addition to the main code. The lib and include folders hold files that help make the screen, speaker, and other components function.

Line 24: This line specifies a library that is needed for the board to function.

Line 25: This also specifies a necessary library. Notice that it is a link to a github repository. When this link is included, it goes to github and uses the repo, just like when we cloned the initial repository.

### 🔧 Equipment and Materials:

- Y badge board
- Usb c to usb cable
- Computer with vs code

 **If your project is still configuring move on to read step 3**

## Procedure:

### 📂 Step 1- Getting the starter code:

1. Open vs code
2. Click the “Source Control” button on the left toolbar
3. Click “Clone Repository”
<p align = "center">
<img src="{% link /assets/y-board_introduction/cloneRepo.png %}" width="250"/>
</p>

5. Enter the url: https://github.com/Ehharv/ybadge_hardware_test_lab.git and hit Enter

6. A window will open and ask you to select the destination folder. Choose where to put it.

### 👽 Step 2-Setting up the environment:

1. Click on the extensions sidebar

<p align = "center">
<img src="{% link /assets/y-board_introduction/Extensions.png %}" width="250"/>
</p>

2. Search for platformio and install the first one

<p align = "center">
<img src="{% link /assets/y-board_introduction/platformIO.png %}" width="250"/>
</p>

3. Once it's done installing, click on the platformio icon on the left. Click “open folder” and choose the folder you just cloned in step 1.

<p align = "center">
<img src="{% link /assets/y-board_introduction/openProject.png %}" width="250"/>
</p>

4. A message should pop up on the bottom right saying platformio is configuring your project. The first time you run this, it will take up to 10 minutes.

**While you’re waiting, go back and read the background for the lab. You can also continue ahead to read step 3 if you finish reading the background.**

### 💻 Step 3- Programming:

1. We’ll be coding in c++ for these labs so remember to end every line of code with a semicolon. You can make one-line comments with two slashes 

`// like this`

or multi-line comments by wrapping them in a slash and asterisk,

```cpp
/* like this
longer comment
On more than one line */
```

Functions are in this format:

<p align = "center">
<img src="{% link /assets/y-board_introduction/functions.png %}" width="250"/>
</p>

The return type and return are used for functions that do something like a calculation. When their function is called from somewhere, it is run and whatever was calculated will be returned to the called. For example:

```cpp
Void main(){ // this is our main function
	int answer; // variable declaration
	answer = add(40, 2); // this calls the other function
}

int add(int x, int y){ // the return type is an integer
	int z;
	z = x+y
	return z; // gives main 42 when function called in this case
}
```

You’ll notice that there are two functions in the helloWorld file. `Void setup()` is run only once when we power on the y-badge board. It helps connect the esp32 to buttons, leds and the like. `Void loop()` is run continuously as fast as it possibly can (this is where clock rate from the background comes into play). You’ll notice that the return type for both is void, meaning they don’t return anything.

In our `setup()` loop, we initialize all the necessary parts of the board by calling some functions. This will get the esp32 ready to send and receive signals. We also play a song.

In our `loop()` we run code to flash the leds and change colors when buttons or switches are flipped.

2. Let's run the code! First, plug the board into the computer. Next, push the upload button at the bottom left or top right of the vs code screen to send it to the esp32.
   
<p align = "center">
<img src="{% link /assets/y-board_introduction/uploadBottom.png %}" width="250"/>
</p>

<p align = "center">
<img src="{% link /assets/y-board_introduction/UploadTop.png %}" width="250"/>
</p>

### 🛠️ Step 4- Hardware Test

The hardware test will make sure that nothing is wrong with your board (this really helps with debugging future labs. If we know the board is working, then we know the problem lies in the code. Test the following to make sure your board and all its parts are working!

Each feature corresponds to an led. The number is printed next to the led. In this example, we are looking at led 3.

<p align = "center">
<img src="{% link /assets/y-board_introduction/labelLED.png %}" width="250"/>
</p>

If the screen isn’t already set up. Plug in the corresponding jumpers:

<p align = "center">
<img src="{% link /assets/y-board_introduction/gpio.png %}" width="250"/>
</p>

As labeled on the oled display:

<p align = "center">
<img src="{% link /assets/y-board_introduction/oled.png %}" width="250"/>
</p>

| Action                                                                       | Result                                                                                         |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| Screen                                                                       | Displays "GPIO Test"                                                                           |
| Speaker                                                                      | Plays part of the fight song when you first upload the code and when you push the reset button |
| Turn the knob                                                                | Led 5 changes brightness                                                                       |
| Flip switch 1 (left)                                                         | Led 1 turns on                                                                                 |
| Flip switch 2 (right)                                                        | Led 2 turns on                                                                                 |
| Push button 1 (left)                                                         | Led 3 turns on                                                                                 |
| Push button 2 (right)                                                        | Led 4 turns on                                                                                 |
| Blow warm/cold air into the temperature sensor                               | Led 9 changes color. Cold is blue, warm is yellow                                              |
| Breathe warm air onto the humidity sensor or wave it around to get dryer air | Led 10 changes colors. Not humid is blue, humid is yellow                                      |
| Tilt and move the y-board                                                    | Led 6, 7, 8 turns on and off. Sometimes this is hard to see                                    |



The humidity and temperature sensor are in this chip:
<p align = "center">
<img src="{% link /assets/y-board_introduction/tempSensor.png %}" width="250"/>
</p>

A photo reference for which led corresponds to which component:

<p align = "center">
<img src="{% link /assets/y-board_introduction/hardwareTestReference.png %}" width="250"/>
</p>

## 🔎 Troubleshooting

<p align = "center">
<img src="{% link /assets/y-board_introduction/troubleshootingSucess.png %}" width="250"/>
</p>

Sometimes the code will appear to upload properly, but nothing will happen on the board. First, make sure the board has batteries. Then, if it still doesn’t do anything, press the reset button and it should start working.

<p align = "center">
<img src="{% link /assets/y-board_introduction/troubleshootingSerialException.png %}" width="250"/>
</p>

or

<p align = "center">
<img src="{% link /assets/y-board_introduction/troubleshootingNoSerialData.png %}" width="250"/>
</p>

Power off the badge. Then while holding the boot button, switch it back on and upload the code. When the code starts uploading, you can let go of the boot button. If this doesn’t work, try it once more. It almost always works by the second time.

<p align = "center">
<img src="{% link /assets/y-board_introduction/troubleshootingSpecifyPort.png %}" width="250"/>
</p>

Remember to turn the board on and plug it into the computer you’re using before trying to upload code.

<p align = "center">
<img src="{% link /assets/y-board_introduction/troubleshootingPortNotExist.png %}" width="250"/>
</p>

Try a different usb port, cord, or restart vscode, or restart the computer.


## Post-lab work:

Show your friend, coworker, or roommate your cool board and its hardware test. Explain what the hardware test is doing.
