class Equation {

  // The domain of t, assuming the equation is continous inside the domain [tStart, tEnd)
  int tStart; 
  int tEnd;
  
  // Setup equation, creates a new parametric function
  Equation() {
    tStart = -100;
    tEnd = 100;
  }
  
  // Draw the equation to the screen
  void display() {
    stroke(0);
    strokeWeight(1.15);
    // Draw all the points in the graph
    for(int i = tStart; i < tEnd/Settings.drawStep; i++) {
      float t = (float) (i * Settings.drawStep);
      point(getX(t)*Settings.ppu, getY(t)*Settings.ppu);
    }
    strokeWeight(1);

 }
  
  
  // Runs a function that takes a float, applies the equation, then returns the x value
  float getX(float t) {
    return 16 * pow(sin(t), 3);
  }
  
  // Runs a function that takes a float, applies the equation, then returns the y value
  float getY(float t) {
    return -(13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t));
  } 
}
