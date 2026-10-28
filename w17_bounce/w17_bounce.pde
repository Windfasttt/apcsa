/* Task 0: Starting from the center, one white circle is moving 
horizontally from x=0 to x=width, while the second circle is moving 
vertically from y=0 to y=height. Once the circles hit a border 
of the window, they bounce and move backwards. 

Task 1: Pressing the spacebar pauses the movement of the circles. 
Pressing the "r" key resets the x and y coordinates of the circles
so that they are back at the center.

Task 2: Each circle is only changing one of its coordinates.
One circle maintains the same x coordinate for the entirety of
the program, while the other circle maintains the same y 
coordinate for the entire time as well. Since these variables
aren't changing, they can be represented by x and y accordingly.
*/

//variables for the up-down circle
int udy, udspeed;
//variables for the left-right circle
int lrx, lrspeed;

//other variables
int csize;
boolean moving;

//variables for the fourth circle
int fourx = int(random(width - (csize/2)));
int foury = int(random(height - (csize/2))); 
int xspeed; 
int yspeed;

void setup() {
  size(600, 400);
  udy = height/2;
  lrx = width/2;
  xspeed = yspeed = udspeed = lrspeed = 1;

  csize = 40;
  moving = true;
}//setup

void draw() {
  background(0);

  circle(width/2, udy, csize);
  circle(lrx, height/2, csize);
  circle(lrx, udy, csize);
  circle(fourx, foury, csize);

  if (moving) {
    if (udy >= height - csize/2 ||
        udy <= csize/2) {
        udspeed *= -1;
    }//up/down bounce

    if (lrx >= width - csize/2 ||
        lrx <= csize/2) {
        lrspeed *= -1;
    }//left/right bounce

    if (fourx >= width - csize/2 || 
        fourx <= csize/2){
        xspeed *= 1; 
    }
    
    if (foury >= height - csize/2 ||
        foury <= csize/2){
        yspeed *= -1;
    }
    
    udy+= udspeed;
    lrx+= lrspeed;
    fourx+= xspeed;
    foury+= yspeed;

  }//moving

}//draw

void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'r') {
    udy = height/2;
    lrx = width/2;
  }
}//keyPressed
