abstract class Equation {

  // The domain of t, assuming the equation is continous inside the domain [tStart, tEnd)
  int tStart = -10;
  int tEnd = 10;
  
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
  abstract float getX(float t);

  // Runs a function that takes a float, applies the equation, then returns the y value
  abstract float getY(float t);
  
}
