/* OOP Assignment 12/04/2021
C19368321 Mahim Hossain
This code runs an audio visualisation that can be controlled using the mouse.
Holding left click lets you drag the audio bands around, holding right click and using the mouse scroll wheel lets you zoom in and out.
Double left clicking/right clicking centers the audio visualisation right in the middle.
Holding shift allows you to rotate the visualisation at one axis
Pressing space pauses the program and pressing space again resumes the program to play.
This program was coded using the processing.sound library.
The song used in this project is called Bad Computer - Paradise
*/

import peasy.*;
import processing.sound.*;

// Declare where the source of the music is coming
SoundFile sample;
FFT fft;

// Define how many FFT bands to use
int bands = 256;

// Define a smoothing factor which determines how much the spectrums of consecutive
// points in time should be combined to create a smoother visualisation of the spectrum.
float smoothingFactor = 0.2;

// Create a vector to store the smoothed spectrum data in
float[] sum = new float[bands];

// Variables for drawing the spectrum:
// Declare a scaling factor for adjusting the height of the rectangles
int scale = 1;
// Declare a drawing variable for calculating the width of the 
float barWidth;

int cols, rows;
int scl = 20;
int w = 600;
int h = 600;

float[][] terrain;

PeasyCam camera;

public void setup() {
  camera = new PeasyCam(this, 0, 0, 0, 50);
  
  fullScreen(P3D);
  background(255);

  // Calculate the width of the rects depending on how many bands we have
  barWidth = width/float(bands);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "song.mp3");
  sample.loop();

  // Create the FFT analyzer and connect the playing soundfile to it.
  fft = new FFT(this, bands);
  fft.input(sample);
  
  cols = w / scl;
  rows = h / scl;
  
  terrain = new float[bands][bands];
  
}

int which = 0;

// code that pauses the program with space bar
public void keyPressed() {
 
  if (keyCode >= '0' && keyCode <= '5') {
    which = keyCode - '0';
  }
  if (keyCode == ' ') {
    if (sample.isPlaying()) {
      
      sample.pause();
    }
    else {
      sample.play();
    }
  }
  
}

public void draw() {
  // Set background color, noFill and stroke color
  background(0);
  stroke(255,0,0);
  noFill();
  
  //translate(width/2, height/2);
  rotateX(PI/3);
  
  translate(-w/2, -h/2);
  
  // Perform the analysis
  fft.analyze();

// Rectangles that react according to the TRIANGLE_STRIPS

  for (int i = 0; i < bands-1; i++) {
    // Smooth the FFT spectrum data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smoothingFactor;

    // Draw the rectangles, adjust their height using the scale factor
    rect(i*barWidth, height, barWidth, -sum[i]*height*scale);
    terrain[i][i] = +sum[i]*(height/2)*scale;
  }
  
  //TRIANGLE_STRIP1 that reacts to the song
  
  for(int y = 0; y < rows; y+=2) {
    beginShape(TRIANGLE_STRIP);
   
    int random = (int)random(1,7);
    for(int x = 0; x < cols; x++)
    {
      if(random == 1) {
        stroke(255,99,21); // orange
        vertex(x*scl, y*scl, terrain[x][x]);
      }
      else {
        stroke(183,65,183); //purple
        vertex(x*scl, y*scl, -terrain[x][x]);
      }
      
      stroke(224,52,78); // dark red
      vertex(x*scl, (y+1)*scl);
    }
    endShape();
  }
  
  //TRIANGLE_STRIP2 that reacts to the song
  
  for(int y = 0; y < rows; y+=2) {
    beginShape(TRIANGLE_STRIP);
   
    int random = (int)random(1,7);
    for(int x = 0; x < cols; x++)
    {
      if(random == 2) {
        stroke(41,134,46); // green
        vertex(x*scl, y*scl, terrain[x][x]);
      }
      else {
        stroke(41,43,134); //dark blue
        vertex(x*scl, y*scl, -terrain[x][x]);
      }
      
       if(random == 3) {
      stroke(43,224,220); // cyan
      vertex(x*scl, (y+1)*scl);
       }
    }
    endShape();
  }
  
 }
