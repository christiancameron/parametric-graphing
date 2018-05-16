class Equation {

  // The domain of t, assuming the equation is continous inside the domain [tStart, tEnd)
  int tStart; 
  int tEnd;
  //The number of integers inside the domain of t
  float size;
  
  // Setup equation, creates a new parametric function
  Equation() {
    size = random(0, Settings.tMax);
    tStart = (int) -size/2;
    tEnd = (int) size/2;
    println(tStart);
    println(tEnd);
  }
  
  // Draw the equation to the screen
  void display() {
    stroke(0);
    
    int prevX = 0;
    int prevY = 0;
    
    for(int i = tStart; i < tEnd/Settings.drawStep; i++) {
      float t = (float) (i * Settings.drawStep);
      float x = sin(t*PI*2) + cos(t);
      float y = cos(3*PI*t);
      println(x*Settings.ppu);
      println(y*Settings.ppu);
      point(x*Settings.ppu, y*Settings.ppu);
    }
  }
  
  float getX(float t) {
    
  }
  
  float getY(float t) {
    
  } 
}
