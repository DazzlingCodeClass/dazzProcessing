/*
Luc Pitre
01 October 2016
session 7 code
*/

/*
**********
VARIABLES
**********
*/

Ship player;
Ship enemy;

/*
**********
MAIN WORKINGS
**********
*/
void setup(){//this function runs the code inside of its braces only ONCE at the start
    size(640, 480);//size() opens a window for all of our code to happen in
    
    player = new Ship('p');
    enemy = new Ship('e');
}//end of setup() function

void draw(){//this function runs the code inside of its braces over and over again after setup() runs
    background(0);//sets the background color of the window opened by size()
    
    player.display();
    enemy.display();
}//end of draw() function


/*
**********
USER DEFINED FUNCTIONS
**********
*/