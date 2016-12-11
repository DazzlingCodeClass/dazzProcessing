/*

Luc Pitre
01 October 2016
session 4 code

*/

//VARIABLES
int size = 16;
int speed = 1;//what is this missing? write it in!
color fill = color(150, 255, 75);
int xposition = 640/2;
int yposition = 480/2;


//MAIN WORKINGS
void setup(){//this function runs the code inside of its braces only ONCE at the start
    
    size(640, 480);//size() opens a window for all of our code to happen in
    
    
}//end of setup() function

void draw(){//this function runs the code inside of its braces over and over again after setup() runs
    
    background(0);//sets the background color of the window opened by size()
    ellipse(xposition+=speed, yposition+=speed, size, size);//creates a round shape, takes four parameters: x position, y position, x size, y size
    fill(fill);
    checkBounds();
    
}//end of draw() function

void checkBounds(){
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
}//end of checkBounds() function