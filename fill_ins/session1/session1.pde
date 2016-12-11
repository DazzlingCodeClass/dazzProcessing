/*
multi-line comment




*/

//VARIABLES
//all variables need a data type, a name, and info stored in it
int size = 16;
int xposition = 640/2;
int yposition = 480/2;
//    speed = 1;//what is this missing? write it in!


//MAIN WORKINGS
void setup(){//this function runs the code inside of its braces only ONCE at the start
    
    size(640, 480);//size() opens a window for all of our code to happen in
    
}//end of setup() function

void draw(){//this function runs the code inside of its braces over and over again after setup() runs
    
    background(0);//sets the background color of the window opened by size()
    ellipse(xposition, yposition, size, size);//creates a round shape, takes four parameters: x position, y position, x size, y size
    
}//end of draw() function