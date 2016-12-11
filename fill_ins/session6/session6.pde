/*
Luc Pitre
01 October 2016
session 6 code
*/

/*
**********
VARIABLES
**********
*/
int size = 16;
int speed = 5;
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
    ellipse(xposition, yposition, size, size);//creates a round shape, takes four parameters: x position, y position, x size, y size
    // >>> create a second sprite and make it move <<<
    //can it have the same speed, x/y position, and color???
    // >>> !!!^ test to see if it can ^!!! <<<
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

void checkBoundsAndBounce(){
  if(xposition >= width){
        speed*=-1;
    }else if(xposition <= 0){
        speed*=-1;
    }
    
    if(yposition >= height){
        speed*=-1;
    }else if(yposition <= 0){
        speed*=-1;
    }
}//end of checkBoundsAndBounce()

//read the keyPressed() reference page at [ http://www.processing.org ] to find out what this does and how to use it!
void keyPressed(){
  if(key == 'c'){
    fill = color(random(255), random(255), random(255));
  }else if(key == CODED){
    switch(keyCode){
      case UP:
        yposition-=speed;
        break;
      case DOWN:
        yposition+=speed;
        break;
      case LEFT:
        xposition-=speed;
        break;
      case RIGHT:
        xposition+=speed;
        break;
    }//end switch statement
  }//end if and else if statement
}//end of keyPressed()