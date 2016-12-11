/*
Luc Pitre
01 October 2016
session 5 code
*/

/*
**********
VARIABLES
**********
*/
int size = 16;
int speed = 1;
color fill = color(150, 255, 75);
int xposition = 640/2;
int yposition = 480/2;

/*
**********
MAIN WORKINGS
**********
*/
void setup(){//this function runs the code inside of its braces only ONCE at the start
    
    size(640, 480);//size() opens a window for all of our code to happen in
    
    
}//end of setup() function

void draw(){//this function runs the code inside of its braces over and over again after setup() runs
    
    background(0);//sets the background color of the window opened by size()
    ellipse(xposition+=speed, yposition+=speed, size, size);//creates a round shape, takes four parameters: x position, y position, x size, y size
    fill(fill);
    checkBoundsAndWrap();
    
}//end of draw() function

/*
**********
USER DEFINED FUNCTIONS
**********
*/

void checkBoundsAndWrap(){
    if(xposition >= width){
        xposition = 0;
    }else if(xposition <= 0){
        xposition = width;
    }
    
    if(yposition >= height){
        yposition = 0;
    }else if(yposition <= 0){
        yposition = height;
    }
}//end of checkBoundsAndWrap()

/*
**************************************************
CREATE A checkBoundsAndBounce() UNDER THIS COMMENT

>>> it should check to see if the sprite moves to the edge of the screen...
...and then reverese its direction whether its in the x or y axis <<<

>>> then compare the two types of end-of-screen functions, and...
...decide which you want to use <<<
**************************************************
*/




//read the keyPressed() reference page at [ http://www.processing.org ] to find out what this does and how to use it!
void keyPressed(){
  
  // >>>make the color change randomly when we press the 'c' key <<<
  //what will we need to make this happen?
  //Remember we are testing for something. What code do we use to test something?
  
  
  
  // >>> now make the sprite move when we press the arrow keys <<<
  //use a switch statement instead of if/if-else statements
  // !!! make sure to get rid of the old code we were using to move the sprite !!!
  
}//end of keyPressed()