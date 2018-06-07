abstract class Equation {

  // The domain of t, assuming the equation is continous inside the domain [tStart, tEnd)
  int tStart = Settings.lowerBound;
  int tEnd = Settings.upperBound;
  
  // Draw the equation to the screen
  void display() {
    
  
    stroke(color(255,0,0), 60);
    strokeWeight(2);
    double range = tEnd/Settings.drawStep - tStart;
    // Draw lines to create the create
    for (int i = tStart; i < tEnd/Settings.drawStep; i++) {
      float t = (float) (i * Settings.drawStep);
      // Draw the point, y(t) needs to be negated because of the canvas layout
      
      point(getX(t)*Settings.ppu, -getY(t)*Settings.ppu);
    }
    strokeWeight(1);
    stroke(0,255);
    
    // Draw the functions equation texts
    fill(0);
    textSize(15);
    text(toString(), -480, -300);
  }
  
  // Runs a function that takes a float, applies the equation, then returns the x value
  abstract float getX(float t);

  // Runs a function that takes a float, applies the equation, then returns the y value
  abstract float getY(float t);
  
  // Returns the string form of the equation used, for regeneration
  abstract String toString();
  
}
