Function f;
Plane plane;

// Setup the program
void setup() {
  size(1000,700);
  background(240);
  plane = new Plane();
  f = new Function();

}

// Draw iterations
void draw() { //<>//
  //background(240);
  
  // Set orgin to be the center of the screen
  translate(width/2, height/2);
  
  //Draw the plane background to the screen
  plane.display();
}
