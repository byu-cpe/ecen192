---
title: "Y-Board Mic & Speakers"
number: 7
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
  - Notice the <strong> tags are empty in the <figcaption> block. The uses these to handle the nametags.
  - If you want to copy and past the shape above, you may, but remove the {% raw %} {% endraw%} in the <img src> block.
--> 

## Overview:

In this lab, you will learn the basics of microphones and speakers and how to read and write to audio files. You will also understand the basics of how we convert electric signals into physical sound waves and vice versa, and how we can store this information. We will talk about audio filters, and you will have the chance to explore the effects of several filter functions using your y-badge.

## Introduction

One of the most important aspects of any computer system is being able to interact with it. Audio is one of the most common forms of human-computer interaction. Think back to the last 24 hours. You likely used computer audio several times to watch a video, make a phone call, or record something. 

### Speakers:

Speakers work by converting electrical signals, called samples, into sound waves that we can hear. This is done through an electromagnet and a diaphragm. As the electromagnet pulls the diaphragm forwards and backwards, it creates pressure waves that are propagated through the air as sound.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/07_mic_speakers/speaker_diagram.gif %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> animated gif of a speaker, showing the function and inner mechanisms.</figcaption>
</figure>

### Microphones:

A microphone works in the opposite fashion. There are many different types of microphones, but we’ll talk about the simplest. Your voice or any other sound wave pushes against a diaphragm and moves it back and forth. A coil of wire that’s connected to the diaphragm then moves up and down through a magnet which produces an electric field within the coil of wire which we can read as a voltage.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/07_mic_speakers/mic_diagram.gif %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> animated gif of a microphone, showing the inner mechanisms and function.</figcaption>
</figure>

One of the big questions with storing the data we get from a microphone is how accurate do we want it to be? Here is a sine wave that represents the pure tone A-440: 

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/07_mic_speakers/A-440_tone_sine_wave.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> a sine wave on a graph, which is the tone A-440.</figcaption>
</figure>

There are an infinite number of points on this graph that I could measure. Now obviously, we can’t store an infinite number of points, but how many we store determines the quality of our audio. However, there reaches a point where the human ear can’t tell the difference, so we don’t go overboard. Generally, we take 44,100 samples a second. This is called the sample rate. Here is the same tone, but how we could sample it.

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/07_mic_speakers/sampled_tone.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> the sine wave graphed, now with several vertical bars representing sample points.</figcaption>
</figure>

## Procedure

### Record an audio file

First open the code for lab 8. Here you will find the basic setup to get your microphone and speaker up and running. First upload the sketch and try to record yourself by speaking while holding down button_1. Be sure you have your SD card loaded in the y-badge or the board will not be able to save the file anywhere. For best results, be sure to speak into the mic which is located here.

<insert picture of final y-badge version>

Once recording is complete, the LEDs will return back to pulsing white and you may remove the SD card. Verify that you recording worked by plugging your SD card into the lab computer and finding the file “my_recording.wav.”

### Graph your audio file

Next, navigate to this website. Upload your audio file by pressing this button:

<figure class="image mx-auto" style="max-width: 750px">
  <img src="{% link /assets/07_mic_speakers/audio_converter.png %}" style="display: block; margin: auto;">
  <figcaption style="text-align: center;"><strong></strong> a picture of an audio converter program.</figcaption>
</figure>

Look at the graph it produces. This shows all of the samples that the y-badge took to record your voice. You can see that it takes many thousands of data points to produce even 10 seconds of audio. That is why audio files can be so large and why so much effort has been put into audio compression. 
    • What else can you learn from this graph? 
    • What was the sample rate the y-badge used? 
    • How many bits were in each sample?

### Play your audio file

Now recording audio isn’t all that cool if you can’t play it. Put your SD card back into the board and open the lab 8 sketch again. Look through the code before you upload it and make sure you understand what is happening. You will have to insert the line:
Yboard.play_sound_file(FILE_NAME);
somewhere in the code. Find out where it makes the most sense. Your Yboard should play the recorded sound file when you press button_2. Make sure it only starts playing once the LEDs have changed color.
       
### Implement high and low pass filters

Have you ever noticed the knobs on stereos that adjust the treble and bass? A very important part of audio processing is being able to apply filters to improve sound quality. We can use this to increase the bass in a song or remove the high-pitched ringing in a poor audio recording, or even add reverb to someone’s voice.
	
There is a large block of code (lines 89-104) that is commented out. Remove those comments and explore these filters. The code is almost complete. After you finish it, this block will apply one of these two filters:
Yboard.high_pass_filter(FILE_NAME, OUTFILE_NAME, cutoff_frequency);
Yboard.high_pass_filter(FILE_NAME, OUTFILE_NAME, cutoff_frequency);
A high pass filter (HPF) allows high frequencies to pass through, whereas a low pass filter (LPF) does the same for low frequencies. These functions take the saved audio file on your SD card, apply the filter, and save the new file under a different name (OUTFILE_NAME). The parameter cutoff_frequency refers to the frequency at which the filter will start to apply. 

Decide where you should place the line of code for the filters. You will also have to add a line to play the new audio file. Try each of these filters one at a time. If done correctly, your board should apply the filter when switch_2 is on and button_2 is pressed and then play the filtered audio.

***Before you leave, upload a sketch that implements only the high pass filter. You will need this for the further exploration portion.

## Further Exploration:

Unless you were screaming, you probably didn’t produce very high frequencies in your recordings to see the effect of a high pass filter. Filters are very powerful, however. Try to see if you can find a source of high-pitched noise (a piano, whistle, high pitched singing etc.) and record yourself talking while the high-pitched noise is playing. Notice how when you apply your filter, the noise is almost completely removed.

<!-- Dynamic figure numbering script -->
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