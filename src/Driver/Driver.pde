Equation e;
Plane plane;

// Setup the program
void setup() {
  size(Settings.canvasWidth,Settings.canvasHeight);
  background(240);
  plane = new Plane();
  // Generates a new random parametric equation
  e = new Equation();

}

// Draw iterations
void draw() { //<>//
  // Set orgin to be the center of the screen
  translate(width/2, height/2);
  
  //Draw the plane background to the screen
  plane.display();
  e.display();
}
