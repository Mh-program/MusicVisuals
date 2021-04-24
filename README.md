# Music Visualiser Project

Name: Mahim Hossain

Student Number: C19368321

## Instructions
- Fork this repository and use it a starter project for your assignment
- Create a new package named your student number and put all your code in this package.
- You should start by creating a subclass of ie.tudublin.Visual
- There is an example visualiser called MyVisual in the example package
- Check out the WaveForm and AudioBandsVisual for examples of how to call the Processing functions from other classes that are not subclasses of PApplet

# Description of the assignment
This assignment is an Audio Visualiser that reacts to the song that is playing. The program
consists of 3D Lines and Rectangles. The rectangles react according to the lines as the song
is playing. The song used in this program is Bad Computer - Paradise. This audio
visualisation can also be controlled using the mouse.
**The code is on the page called OOP_Project.pde
**
The song is already in the data folder called song.mp3

# Instructions
Holding left click lets you drag the audio bands around, holding right click and using the mouse scroll wheel lets you zoom in and out.
Double left clicking/right clicking centers the audio visualisation right in the middle.
Holding shift allows you to rotate the visualisation at one axis
Pressing space pauses the program and pressing space again resumes the program to play.

# How it works
Making it run is fairly simple. You can run this code on a processing IDE and make sure you have
the Processing Sound Library and PeasyCam library installed. These libraries can be easily
installed by going into the Processing IDE and hovering over into the tools section and then
Add Tool. If you are using Visual Studio Code, make sure again you have the relevant Java Libraries
installed and hit FN-F5 and watch the program run.

# What I am most proud of in the assignment
Very proud of this assignment as calculating the rows and cols to make the 3D lines move correctly
and made sure it was not too jittery as it played to the music was very difficult. This program
also displays two visuals at the same time, the 2D rectangles are reacting according to the lines
and people can have a look at a 2D visualisation or a 3D visualisation or both! This program
also lets you interact with the audio visualisation by moving it around. I have never used
the peasy camera library before but it was definitely very interesting to learn how to use it
and how it would affect my program.

**Youtube link showing demonstration of the program:** https://www.youtube.com/watch?v=rcIczC1E3gw



# Markdown Tutorial

This is *emphasis*

This is a bulleted list

- Item
- Item

This is a numbered list

1. Item
1. Item

This is a [hyperlink](http://bryanduggan.org)

# Headings
## Headings
#### Headings
##### Headings

This is code:

```Java
public void render()
{
	ui.noFill();
	ui.stroke(255);
	ui.rect(x, y, width, height);
	ui.textAlign(PApplet.CENTER, PApplet.CENTER);
	ui.text(text, x + width * 0.5f, y + height * 0.5f);
}
```

So is this without specifying the language:

```
public void render()
{
	ui.noFill();
	ui.stroke(255);
	ui.rect(x, y, width, height);
	ui.textAlign(PApplet.CENTER, PApplet.CENTER);
	ui.text(text, x + width * 0.5f, y + height * 0.5f);
}
```

This is an image using a relative URL:

![An image](images/p8.png)

This is an image using an absolute URL:

![A different image](https://bryanduggandotorg.files.wordpress.com/2019/02/infinite-forms-00045.png?w=595&h=&zoom=2)

This is a youtube video:

[![YouTube](http://img.youtube.com/vi/J2kHSSFA4NU/0.jpg)](https://www.youtube.com/watch?v=J2kHSSFA4NU)

This is a table:

| Heading 1 | Heading 2 |
|-----------|-----------|
|Some stuff | Some more stuff in this column |
|Some stuff | Some more stuff in this column |
|Some stuff | Some more stuff in this column |
|Some stuff | Some more stuff in this column |

