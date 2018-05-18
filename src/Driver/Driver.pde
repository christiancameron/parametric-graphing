Plane plane; //<>//
EquationFactory factory;

// Cords of the rect button, post-translate
int bX = -475;
int bY = 290;

// The length of the rect button
int bH = 35;
int bW = 70;

// Setup the program
void setup() {
  size(1000, 700);

  plane = new Plane();
  factory = new EquationFactory();
  randomDrawEquation();
}

/**
 * Generate a new random equation, then draw it to the screen.
 */
void randomDrawEquation() {
  strokeWeight(1);
  background(250);
   // Generate the equation
  Equation e = factory.randomEquation();

  // Draw the functions equations
  fill(Settings.graphColor);
  textSize(25);
  text(e.toString(), 25, 25);

  // Set orgin to be the center of the screen
  translate(width/2, height/2);

  //Draw the plane background to the screen
  plane.display();

  //Draw the equation
  e.display();
  
  // Draw the button
  fill(0,255,0);
  rect(bX,bY,bW,bH);
  //fill(255,255,255);
  fill(0);
  textSize(15);
  text("Random", -470, 275+bH);
}

// Draw iterations, not needed with this implementation
void draw() {}

void mouseReleased() {
  if(mouseX > 1000/2+bX && mouseX < 1000/2+bX+bW && mouseY > 640 && mouseY < 640+bH) {
    randomDrawEquation();
  }
}
