class Equation {

  // The domain of t, assuming the equation is continous inside the domain [tStart, tEnd)
  int tStart = 0;
  int tEnd = 100;
  
  color graphColor;
  
  Equation(color graphCol) {
    graphColor = graphCol;
  }
  
  

  // Draw the equation to the screen
  void display() {
    stroke(graphColor);
    // Draw all the points in the graph
    for (int i = tStart; i < tEnd/Settings.drawStep; i++) {
      float t = (float) (i * Settings.drawStep);
      point(getX(t)*Settings.ppu, -getY(t)*Settings.ppu);
    }
  }
  
  // Runs a function that takes a float, applies the equation, then returns the x value
  float getX(float t) {
    return 2*cos(t) + sin(2*t) * cos(60*t);
  }

  // Runs a function that takes a float, applies the equation, then returns the y value
  float getY(float t) {
    return sin(t);
  }
  
}
