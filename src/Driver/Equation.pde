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
    
    float prevX = getX((float) (tStart*Settings.ppu));
    float prevY = getY((float) (tStart*Settings.ppu));
    
    for(int i = tStart; i < tEnd/Settings.drawStep; i++) {
      float t = (float) (i * Settings.drawStep);
      float x = getX(t);
      float y = getY(t);
            
      line(prevX*Settings.ppu, prevY*Settings.ppu, x*Settings.ppu, y*Settings.ppu);

      // Update the previous point
      prevX = x;
      prevY = y;
    }

 }
  
  
  // Runs a function that takes a float, applies the equation, then returns the x value
  float getX(float t) {
    return 16 * pow(sin(t), 3);
  }
  
  // Runs a function that takes a float, applies the equation, then returns the y value
  float getY(float t) {
    return 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
  } 
}
