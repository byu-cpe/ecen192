---
title: Microcontrollers
number: 5
layout: lab
---
# Lab 05- Microcontrollers

**Overview:**

In his lab you’ll be setting up your coding environment, and learning the basics of programming the microcontroller on the y-badge. The end product will be a comprehensive hardware test.

**Background:**

**ATTENTION: Begin with step 1 and continue through step 2 until directed to circle back to the background section**

A microcontroller is a compact computer on a chip. They’re used in things that need some level of intelligence to perform a function but don't require a whole computer. At the heart of a microcontroller is a central processing unit, or CPU. It’s much simpler than the CPU in your laptop or desktop but is optimized to perform tasks efficiently with limited resources. Microcontrollers come with their own memory to store the program (instructions) and to store data temporarily while it's running. They have built-in input/output interfaces, which means they can read signals from and send signals to other devices. For example, a microcontroller in a vending machine reads inputs from the buttons you press, and controls outputs like returning change or vending a snack.

Applications include, electric toothbrushes, wireless earbuds, microwaves, pacemakers, printers, anti-lock brakes, and many more.

The microcontroller we’ll be using for this class is an ESP32-S3 mini. This microcontroller has a dual-core microprocessor which means it can handle more complex tasks compared to single-core microcontrollers. It runs at a clock speed of up to 240 MHz, which is faster than other microcontrollers, allowing it to process data quickly. One neat feature that we’ll explore in future labs is its built-in support for Wi-Fi and Bluetooth. You can find the microcontroller located on the top left of your y-badge. The esp32 is connected to the various components (buttons, switches, leds etc) by through traces (which are like wires embedded into the printed circuit board). One is highlighted in red in this image:

For the rest of the labs in this course, we’ll be learning how to control different components on the y-badge with our microcontroller. To do this, we need to be able to give it instructions by writing and uploading a program. We’ll use visual studio code and an extension (platform io) to help us with this.

During step 1, we clone a repository from github. Github is an online platform where developers store, share, and collaborate on code. When you "clone a repository," you're making a copy of someone else's project (which is stored on GitHub) onto your own computer. This lets you work on the project locally.

In step 2, we installed the PlatformIO extension. This will get the code we write, ready to be sent to the microcontroller. In every project going forward we’ll have a platformio.ini file. Let’s take a look at what’s inside of this one.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXd7RwM9-cJ5Z7MTCbzztjkgdAgimAykWzWIDY570OC-0gIzoDQIUl7ijSNyFwdpc5oCd5zwp4r8P4khicDhcyR8qtAn-0QowQb7BkiOfTe3ETSOQbebAo05OKzgHxWz_RdgTzgQiHu65KIVrWfxlpwWkLno?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXd7RwM9-cJ5Z7MTCbzztjkgdAgimAykWzWIDY570OC-0gIzoDQIUl7ijSNyFwdpc5oCd5zwp4r8P4khicDhcyR8qtAn-0QowQb7BkiOfTe3ETSOQbebAo05OKzgHxWz_RdgTzgQiHu65KIVrWfxlpwWkLno?key=MxbenWN9SqF96AKKveCeeA)

Lines 11-14: These specify what kind of microcontroller we are uploading to and the format of code we are using.

Lines 16-21: These tell the compiler that we need to include extra files in addition to the main code. The lib and include folders hold files that help make the screen, speaker, and other components function.

Line 24: This line specifies a library that is needed for the board to function.

Line 25: This also specifies a necessary library. Notice that it is a link to a github repository. When this link is included, it goes to github and uses the repo, just like when we cloned the initial repository.

**If your project is still configuring move on to read step 3**

**Equipment and Materials:**

- Y badge board
- Usb c to usb cable
- Computer with vs code

**Procedure:**

### Step 1- Getting the starter code:

1. Open vs code
2. Click the “Source Control” button on the left toolbar
3. Click “Clone Repository”
4. Enter the url: <insert url> and hit Enter
5. A window will open and ask you to select the destination folder. Choose where to put it.

### Step 2-Setting up the environment:

1. Click on the extensions sidebar

[https://lh7-us.googleusercontent.com/docsz/AD_4nXcdn_gEmOPi13MK8SWJMaLWK3HjsKyjR0zXe9-pNhMebKuJHfoydl5VVyOIY8J4uuuWHSRdUbshihZLcsyMRNa_Uo3DeRMapoNLZVj_s11KB0cRtNbQ-0JBq6ziOc-nKIWbcW8znYoRVqUBCUxqnIXBykxQ?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXcdn_gEmOPi13MK8SWJMaLWK3HjsKyjR0zXe9-pNhMebKuJHfoydl5VVyOIY8J4uuuWHSRdUbshihZLcsyMRNa_Uo3DeRMapoNLZVj_s11KB0cRtNbQ-0JBq6ziOc-nKIWbcW8znYoRVqUBCUxqnIXBykxQ?key=MxbenWN9SqF96AKKveCeeA)

1. Search for platformio and install the first one

[https://lh7-us.googleusercontent.com/docsz/AD_4nXca81Rh6lHtH-jFXx8s-2BKqgxEUeEPL-QAGAiwmuMXZqKeR7dn3FY0GTfo9L9QInFRfntagE8fOoWUxxSspt-fuOjwOO5im4Gb4gGEfli3O1xkbXHMgbtuwRMfxacrEPkObpjMJm6ec4CpHg1Gy4KmV8Gy?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXca81Rh6lHtH-jFXx8s-2BKqgxEUeEPL-QAGAiwmuMXZqKeR7dn3FY0GTfo9L9QInFRfntagE8fOoWUxxSspt-fuOjwOO5im4Gb4gGEfli3O1xkbXHMgbtuwRMfxacrEPkObpjMJm6ec4CpHg1Gy4KmV8Gy?key=MxbenWN9SqF96AKKveCeeA)

1. Once it's done installing, click on the platformio icon on the left. Click “open folder” and choose the folder you just cloned in step 1.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXfniX7zejmoHVUxMWOSIJ9LTi2Xc0-7MT9lexolV9-zPBQTPf432Pi5Y2lP_mGwz7GyHPBzHQMJzjiU_WMT_ZQ5Av6Ez8L-17KCBCABw3-eRTjHx4ABJ16TLjARCHt7TZnhh3i3ntIBZvXmMpBw8BWYioe2?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXfniX7zejmoHVUxMWOSIJ9LTi2Xc0-7MT9lexolV9-zPBQTPf432Pi5Y2lP_mGwz7GyHPBzHQMJzjiU_WMT_ZQ5Av6Ez8L-17KCBCABw3-eRTjHx4ABJ16TLjARCHt7TZnhh3i3ntIBZvXmMpBw8BWYioe2?key=MxbenWN9SqF96AKKveCeeA)

1. A message should pop up on the bottom right saying platformio is configuring your project. The first time you run this, it will take up to 10 minutes.

**While you’re waiting, go back and read the background for the lab. You can also continue ahead to read step 3 if you finish reading the background.**

### Step 3- Programming:

1. We’ll be coding in c++ for these labs so remember to end every line of code with a semicolon. You can make one-line comments with two slashes 

`// like this`

or multi-line comments by wrapping them in a slash and asterisk,

```cpp
/* like this
longer comment
On more than one line */
```

Functions are in this format:

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

1. Let's run the code! First, plug the board into the computer. Next, push the upload button at the bottom left or top right of the vs code screen to send it to the esp32.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXd3tBlutA_D3NiILAx15jQVej52NmjPTGG631VJUmFYkiVTuW_bis4lG-ouj7KHHbCU3JvC-zSFqfDaSIhXUjzfHLtfizDydz-_La-2oWz3x5s2g2R1YIbmxNo4rIvXAaqLsSLJcIO6aDH7JYBFHMVlc3FJ?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXd3tBlutA_D3NiILAx15jQVej52NmjPTGG631VJUmFYkiVTuW_bis4lG-ouj7KHHbCU3JvC-zSFqfDaSIhXUjzfHLtfizDydz-_La-2oWz3x5s2g2R1YIbmxNo4rIvXAaqLsSLJcIO6aDH7JYBFHMVlc3FJ?key=MxbenWN9SqF96AKKveCeeA)

### Troubleshooting

[https://lh7-us.googleusercontent.com/docsz/AD_4nXcsevmIuOBQM5OGZ08vLxacm1Y9PMDe60dpx49AYLTv725KWKrjWx_scj9sQaGjmJetK0aSgld2y2TUDTINz1IGrLPiSxNyfEA5LRtxxUty6VEgPf15KZJkd4dJ0sSU3aQiBEFoebjFTmBwlUhTR6Gt-41b?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXcsevmIuOBQM5OGZ08vLxacm1Y9PMDe60dpx49AYLTv725KWKrjWx_scj9sQaGjmJetK0aSgld2y2TUDTINz1IGrLPiSxNyfEA5LRtxxUty6VEgPf15KZJkd4dJ0sSU3aQiBEFoebjFTmBwlUhTR6Gt-41b?key=MxbenWN9SqF96AKKveCeeA)

Sometimes the code will appear to upload properly, but nothing will happen on the board. First, make sure the board has batteries. Then, if it still doesn’t do anything, press the reset button and it should start working.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXdS69QZJXZK10zo2tgrljpnofmcZ0MVvuL99ZokuJheLbY7mbRvzhIRWdSSOu6bqJ_O49td6rsjrjI5t8KGdKWkV3m6q_ANmvzKFvKjrwQi12n-6BDCAP4raiDuSDFvhkx_LTaXc4YD2K2bJjmScByVWLcT?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXdS69QZJXZK10zo2tgrljpnofmcZ0MVvuL99ZokuJheLbY7mbRvzhIRWdSSOu6bqJ_O49td6rsjrjI5t8KGdKWkV3m6q_ANmvzKFvKjrwQi12n-6BDCAP4raiDuSDFvhkx_LTaXc4YD2K2bJjmScByVWLcT?key=MxbenWN9SqF96AKKveCeeA)

or

[https://lh7-us.googleusercontent.com/docsz/AD_4nXfi1SCIioo1va30QOdahv8rErRmRHYYVYqwT-T7q4qEUqLYnuX84dU419t7c3Chrc-cJFLO4wbL5TPXJnYeuH1RDLjtiaIRDqs7qIvRvDtubPi1tZ-P5zMc2lqUREvghAoQvWyztNxnW70zWtjyOhPNVCWC?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXfi1SCIioo1va30QOdahv8rErRmRHYYVYqwT-T7q4qEUqLYnuX84dU419t7c3Chrc-cJFLO4wbL5TPXJnYeuH1RDLjtiaIRDqs7qIvRvDtubPi1tZ-P5zMc2lqUREvghAoQvWyztNxnW70zWtjyOhPNVCWC?key=MxbenWN9SqF96AKKveCeeA)

Power off the badge. Then while holding the boot button, switch it back on and upload the code. When the code starts uploading, you can let go of the boot button. If this doesn’t work, try it once more. It almost always works by the second time.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXchqeuyMZWZFLIG0fcs6Gm6IvmFJpWO9y3rLzn3cVOKtLd_YkxkRI1zL8HKEAiSqfc1eWWVT_yN5tpg5HB0obho6wIDMEdC20kT-yFAZVTbZ3dVpOPKQV301nNYx3aKXYKPEZESWapaTvabuaqZusznaDY9?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXchqeuyMZWZFLIG0fcs6Gm6IvmFJpWO9y3rLzn3cVOKtLd_YkxkRI1zL8HKEAiSqfc1eWWVT_yN5tpg5HB0obho6wIDMEdC20kT-yFAZVTbZ3dVpOPKQV301nNYx3aKXYKPEZESWapaTvabuaqZusznaDY9?key=MxbenWN9SqF96AKKveCeeA)

Remember to turn the board on and plug it into the computer you’re using before trying to upload code.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXd79oXYydtHQ5QMOXmrMf2OsMsX69IDhfU85SssRpE3v2XINom3IqfePH4o8kCgrjU55iRnkJ3g2DsvaJ5lfuudUALKRqMqWUp72VofA8yHj6UEWesa_oXpb675P5Zt-91p9A0ELkc4Surs_z8zbIjyuCc?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXd79oXYydtHQ5QMOXmrMf2OsMsX69IDhfU85SssRpE3v2XINom3IqfePH4o8kCgrjU55iRnkJ3g2DsvaJ5lfuudUALKRqMqWUp72VofA8yHj6UEWesa_oXpb675P5Zt-91p9A0ELkc4Surs_z8zbIjyuCc?key=MxbenWN9SqF96AKKveCeeA)

Try a different usb port, cord, or restart vscode, or restart the computer.

### Step 4- Hardware Test

The hardware test will make sure that nothing is wrong with your board (this really helps with debugging future labs. If we know the board is working, then we know the problem lies in the code. Test the following to make sure your board and all its parts are working!

Each feature corresponds to an led. The number is printed next to the led. In this example, we are looking at led 3.

[https://lh7-us.googleusercontent.com/docsz/AD_4nXeBN2kssX6J87QMaiN-RbufiykpzRzSRVecKh434wypLQGi1R892VzcYg0oQ6KOPn0iNv4bX77T3VWURm1jww8yIrd06y2MdwlUuZP5IzSuWKFSGm3Aezkn5tXPnh-iibO2heOxTS1bMRgWoacRnCQ8Bxc?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXeBN2kssX6J87QMaiN-RbufiykpzRzSRVecKh434wypLQGi1R892VzcYg0oQ6KOPn0iNv4bX77T3VWURm1jww8yIrd06y2MdwlUuZP5IzSuWKFSGm3Aezkn5tXPnh-iibO2heOxTS1bMRgWoacRnCQ8Bxc?key=MxbenWN9SqF96AKKveCeeA)

A photo reference for which led corresponds to which component is at the bottom.

If the screen isn’t already set up. Plug in the corresponding jumpers:

[https://lh7-us.googleusercontent.com/docsz/AD_4nXdEallvn8XVQMiTREeUiQvlaeB5jiL-l0P7pt6sqy_lMsL1mUacZzZKxiehS7s5T6reAbjM6OoSXHd2GVPkqAFytNgjlvh6Z2vKJ0nrDSaX84p3n6SQ24TrsgDZ_snt9mRiKqMjLmVPenQjK1AnbjkkmhC4?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXdEallvn8XVQMiTREeUiQvlaeB5jiL-l0P7pt6sqy_lMsL1mUacZzZKxiehS7s5T6reAbjM6OoSXHd2GVPkqAFytNgjlvh6Z2vKJ0nrDSaX84p3n6SQ24TrsgDZ_snt9mRiKqMjLmVPenQjK1AnbjkkmhC4?key=MxbenWN9SqF96AKKveCeeA)

As labeled on the oled display:

[https://lh7-us.googleusercontent.com/docsz/AD_4nXdmI_d6Osj1q8w5lQgUYaze5FlPTz3ErhurXPkz8FMofietafj9dWmrWfiaK_0KTGdqoqs3ud1Tzzmb156Yq9aMrOfeWTsInxs4Y0BORRmG5_E4D0Hjs32gZQTEev-9jWooJkthWwTd6jjxOzOplNJJ0OY?key=MxbenWN9SqF96AKKveCeeA](https://lh7-us.googleusercontent.com/docsz/AD_4nXdmI_d6Osj1q8w5lQgUYaze5FlPTz3ErhurXPkz8FMofietafj9dWmrWfiaK_0KTGdqoqs3ud1Tzzmb156Yq9aMrOfeWTsInxs4Y0BORRmG5_E4D0Hjs32gZQTEev-9jWooJkthWwTd6jjxOzOplNJJ0OY?key=MxbenWN9SqF96AKKveCeeA)

Screen

Should display "GPIO Test"

Speaker

Should play part of the fight song when you first upload the code and when you push the reset button

Turn the knob

Led 5 changes brightness

Flip switch 1 (left):

Led 1 turns on

Flip switch 2 (right):

Led 2 turns on

Push button 1 (left):

Led 3 turns on

Push button 2 (right):

Led 4 turns on

The humidity and temperature sensor are in this chip:

Blow warm/cold air into the temperature sensor:

Led 9 should change color. Cold is blue, warm is yellow

Breathe warm air onto the humidity sensor or wave it around to get dryer air:

Led 10 should change colors. Not humid is blue, humid is yellow

Tilt and move the y-board:

Led 6, 7, 8 will turn on and off. Sometimes this is hard to see

**Post-lab work:**

Show your friend, coworker, or roommate your cool board and its hardware test. Explain what the hardware test is doing.
