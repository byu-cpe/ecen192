---
title: Y-Board Introduction
number: 5
layout: lab
---

## Overview:

In this lab you’ll be setting up your coding environment and learning the basics of programming the microcontroller on the y-board. The end of this lab will be a comprehensive hardware test so you know what sorts of sensors and actuators are at your disposal on these boards.

### 🔧 Equipment and Materials:

- Y-board
- USB-C to USB-A cable
- Visual Studio Code
- Male to female jumper wires (x4)
- OLED screen

## Background:

### 💻 Microcontrollers
A microcontroller (abbreviated as "MCU") is a compact computer on a chip. They’re used in things that need some level of intelligence to perform a function but don't require a whole computer. At the heart of a microcontroller is a central processing unit, or CPU. It’s much simpler than the CPU in your laptop or desktop but is optimized to perform tasks efficiently with limited resources. Microcontrollers come with their own memory to store the program (instructions) and to store data temporarily while it's running. They have built-in input/output interfaces, which means they can read signals from and send signals to other devices. For example, a microcontroller in a vending machine reads inputs from the buttons you press, and controls outputs like returning change or vending a snack.

Applications include: electric toothbrushes, wireless earbuds, microwaves, pacemakers, printers, anti-lock brakes, and many more.

The microcontroller we’ll be using for this class is an ESP32-S3 mini. This microcontroller has a dual-core microprocessor which means it can handle more complex tasks compared to single-core microcontrollers. It runs at a clock speed of up to 240 MHz, which is faster than other microcontrollers, allowing it to process data quickly. One neat feature that we’ll explore in future labs is its built-in support for Wi-Fi and Bluetooth. You can find the microcontroller located on the top left of your y-board. The ESP32 is connected to the various components (buttons, switches, LEDs, etc.) by traces, which are wires embedded into the printed circuit board. I've highlighted a trace in yellow in this image:

<p align = "center">
<img src="{% link /assets/Microcontrollers/Traces.png %}" width="250"/>
</p>

For the rest of the labs in this course, we’ll be learning how to control different components on the y-board with our microcontroller. To do this, we need to be able to give it instructions by writing and uploading programs. We’ll use Visual Studio Code to write the program and an extension (PlatformIO) to upload the program to the board.

### 🌐 Github
During step 1, we clone a repository from github. Github is an online platform where developers store, share, and collaborate on code. When you "clone a repository," you're making a copy of someone else's project (which is stored on GitHub) onto your own computer. This lets you work on the project locally.

### 👽 PlatformIO
In step 2, we installed the PlatformIO extension. This assists in sending the compiled code to the Y-board. In every project going forward we’ll have a platformio.ini file. Let’s take a look at what’s inside of this one.

<p align = "center">
<img src="{% link /assets/Microcontrollers/iniFile.png %}" width="250"/>
</p>

Lines 11-14: These specify what kind of microcontroller we are uploading to and the format of code we are using.

Lines 16-21: These tell the compiler that we need to include extra files in addition to the main code. The lib and include folders hold files that help make the screen, speaker, and other components function.

Line 24: This line specifies a library that is needed for the board to function.

Line 25: This also specifies a necessary library. Notice that it is a link to a github repository. When this link is included, it goes to github and downloads the repository with some base code that's required behind the scenes for the Y-board to operate.

## Procedure:

### 📂 Step 1- Getting the starter code:

1. Open Visual Studio Code
2. Click the “Source Control” button on the left toolbar
3. Click “Clone Repository”

<p align = "center">
<img src="{% link /assets/Microcontrollers/cloneRepo.png %}" width="250"/>
</p>

5. Enter the url: https://github.com/byu-ecen-192/y-board-introduction.git and hit Enter

6. A window will open and ask you to select the destination folder. Choose where to put it.

### 👽 Step 2-Setting up the environment:

1. Click on the extensions sidebar

<p align = "center">
<img src="{% link /assets/Microcontrollers/Extensions.png %}" width="250"/>
</p>

2. Search for platformio and install the first one

<p align = "center">
<img src="{% link /assets/Microcontrollers/platformIO.png %}" width="250"/>
</p>

3. Once it's done installing, click on the platformio icon on the left. Click “open folder” and choose the folder you just cloned in step 1.

<p align = "center">
<img src="{% link /assets/Microcontrollers/openProject.png %}" width="250"/>
</p>

4. A message should pop up on the bottom right saying platformio is configuring your project. The first time you run this, it will take up to 10 minutes.

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
<img src="{% link /assets/Microcontrollers/functions.png %}" width="250"/>
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

You’ll notice that there are two functions in the helloWorld file. `Void setup()` is run only once when we power on the y-board board. It helps connect the ESP32 to buttons, LEDs and the like. `Void loop()` is run continuously as fast as it possibly can (this is where clock rate from the background comes into play). You’ll notice that the return type for both is void, meaning they don’t return anything.

In our `setup()` loop, we initialize all the necessary parts of the board by calling some functions. This will get the ESP32 ready to send and receive signals. We also play a song.

In our `loop()` we run code to flash the LEDs and change colors when buttons or switches are flipped.

2. Let's run the code! To prepare the board for upload, plug in your board to the computer you're using through the USB cable. 

3. On the Y-board: while holding down the "Boot" button, press the "reset" button. The imporant thing is that the "Boot" button is held down while the board is powering on. This puts the board in a state where it is expecting  to receive compiled code.

4. Back in VS Code: push the upload button at the bottom left or top right of the VS Code screen to send it to the ESP32.
   
<p align = "center">
<img src="{% link /assets/Microcontrollers/uploadBottom.png %}" width="250"/>
</p>

<p align = "center">
<img src="{% link /assets/Microcontrollers/UploadTop.png %}" width="250"/>
</p>

### 🛠️ Step 4- Hardware Test

The hardware test will make sure that nothing is wrong with your board. Test the following to make sure your board and all its parts are working!

Most features correspond to an LED. Each LED is numbered with the number printed next to the LED on the circuit board. In this example, we are looking at LED 4 (labelled 'L4').

<p align = "center">
<img src="{% link /assets/Microcontrollers/labelLED.png %}" width="250"/>
</p>

If the screen isn’t already set up. Plug in the corresponding jumpers:

<p align = "center">
<img src="{% link /assets/Microcontrollers/gpio.png %}" width="250"/>
</p>

As labeled on the OLED display:

<p align = "center">
<img src="{% link /assets/Microcontrollers/oled.png %}" width="250"/>
</p>

| Action                                                  | Result                                                                                                                           |
| ------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Screen                                                  | Displays "GPIO Test" and other information                                                                                       |
| Speaker                                                 | Plays part of the BYU fight song when the board powers on                                                                        |
| Turn the knob                                           | LED 5 changes brightness                                                                                                         |
| Flip switch 1 (left)                                    | LED 1 turns on                                                                                                                   |
| Flip switch 2 (right)                                   | LED 2 turns on                                                                                                                   |
| Push button 1 (left)                                    | LED 3 turns on                                                                                                                   |
| Push button 2 (right)                                   | LED 4 turns on                                                                                                                   |
| Tilt and move the y-board                               | LEDs 6, 7, 8 change brightness to indicate magnitude of acceleration and switch color to indicate positive vs negative direction |
| Blow warm/cold air into the temperature sensor          | LED 9 changes color gradually from cyan (cold) to red (hot)                                                                      |



The temperature sensor is in this chip:
<p align = "center">
<img src="{% link /assets/Microcontrollers/tempSensor.png %}" width="250"/>
</p>

A photo reference for which LED corresponds to which component:

<p align = "center">
<img src="{% link /assets/Microcontrollers/hardwareTestReference.png %}" width="250"/>
</p>

## 🔎 Troubleshooting

<p align = "center">
<img src="{% link /assets/Microcontrollers/troubleshootingSucess.png %}" width="250"/>
</p>

Sometimes the code will appear to upload properly, but nothing will happen on the board. First, make sure the board has batteries. Then, if it still doesn’t do anything, press the reset button and it should start working.

<p align = "center">
<img src="{% link /assets/Microcontrollers/troubleshootingSerialException.png %}" width="250"/>
</p>

or

<p align = "center">
<img src="{% link /assets/Microcontrollers/troubleshootingNoSerialData.png %}" width="250"/>
</p>

Power off the board. Then while holding the boot button, switch it back on and upload the code. When the code starts uploading, you can let go of the boot button. If this doesn’t work, try it once more. It almost always works by the second time.

<p align = "center">
<img src="{% link /assets/Microcontrollers/troubleshootingSpecifyPort.png %}" width="250"/>
</p>

Remember to turn the board on and plug it into the computer you’re using before trying to upload code.

<p align = "center">
<img src="{% link /assets/Microcontrollers/troubleshootingPortNotExist.png %}" width="250"/>
</p>

Try a different usb port, cord, or restart vscode, or restart the computer.


## Post-lab work:

Show your friend, coworker, or roommate your cool board and its hardware test. Explain what the hardware test is doing.
