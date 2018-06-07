Plane plane; //<>// //<>//
EquationFactory factory;
Equation currEqu = null;

// Cords of the rect button, post-translate
int bX = -475;
int bY = 290;
// The length of the rect button
int bH = 35;
int bW = 70;

// Setup the program
void setup() {
  size(1000, 700, P3D);

  plane = new FunctionalPlane();
  factory = new EquationFactory();
  randomDrawEquation();
}

/**
 * Generate a new random equation, then draw it to the screen.
 */
void randomDrawEquation() {
  strokeWeight(1);
  // Generate the equation
  Equation e = factory.randomEquation();
  currEqu = e;

 

  //Draw the plane background to the screen
  plane.display();

  //Draw the equation
  e.display();
  
  // Draw Buttons
  plane.drawModeButton();
  drawRandButton();
}

// Draw iterations, not needed with this implementation
void draw() {}

// Draw the random button for generating a new equation
void drawRandButton() {
 // Draw the button
  fill(0,255,0);
  rect(bX,bY,bW,bH);
  fill(0);
  textSize(15);
  text("Random", -470, 275+bH);
}

void mouseReleased() {
  if(mouseX > 1000/2+bX && mouseX < 1000/2+bX+bW && mouseY > 640 && mouseY < 640+bH) {
    randomDrawEquation();
  }
  
  if(mouseX > 1000/2+Settings.mX && mouseX < 1000/2+Settings.mX+Settings.mW && mouseY > 640 && mouseY < 640+Settings.mW) {
    // Switch between functional or presentation
    if(plane instanceof FunctionalPlane)
      plane = new PresentationPlane();
    else 
      plane = new FunctionalPlane();
    
    plane.display();
    currEqu.display();
    plane.drawModeButton();
    drawRandButton();
  }
  
}
