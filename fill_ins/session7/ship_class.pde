class Ship{
 //what are the characteristics of our ship?
 float x, y, xsize, ysize;
 float exspeed, eyspeed, pxspeed, pyspeed, accel;
 String type;
 color fill;
 
 //this is a constructor
 //when we create a ship, this code gets run, giving it a shape, size, speed, and color
 Ship(char t){
   if(t == 'e'){//if it is an enemy ship
     type = "ENEMY";
     x = random(600);
     y = random(400);
     fill = color(255, 0, 0);
     xsize = ysize = 32;
     exspeed = eyspeed = 5;
     accel = 0.5;
   }else if(t == 'p'){//if it is player ship
     type = "PLAYER";
     x = 50;
     y = 50;
     fill = color(0, 255, 0);
     xsize = ysize = 16;
     pxspeed = pyspeed = 0;
     accel = 0.1;
   }
 }
 
 /*
 >>> now we need functions to tell our ship how to move and what to do <<<
 >>> they are written like any other function with a..
 ...data type, name, parameters, and curly braces...
 ...the only difference is how we call these functions <<<
 */
 
 //function to display or update
 
 void display(){
   
   //based on what type of ship it is we need to display differently(color, shape, etc.)
   if(type == "ENEMY"){
     fill(fill);
     ellipse(x += exspeed, y += eyspeed, xsize, ysize);
   }else if(type == "PLAYER"){
     fill(fill);
     ellipse(x += pxspeed, y += pyspeed, xsize, ysize);
   }
   move();
 }//end of display()
   
 void move(){
   if(keyPressed){
     
     if(key == CODED){
      switch(keyCode){
        case UP:
          pyspeed -= accel;
          break;
        case DOWN:
          pyspeed += accel;
          break;
        case LEFT:
          pxspeed -= accel;
          break;
        case RIGHT:
          pxspeed += accel;
          break;
      }//end switch statement
    }else if(key == 's'){
      pxspeed = pyspeed = 0;
    }//end of else if
   }//end of if keyPressed
   checkBoundsAndWrap();
 }//end of move()
 
  void checkBoundsAndWrap(){
      if(x >= width){
          x = 0;
      }else if(x <= 0){
          x = width;
      }
      
      if(y >= height){
          y = 0;
      }else if(y <= 0){
          y = height;
      }
  }//end of checkBoundsAndWrap()

}//end of class