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
    
    for(int i = tStart; i < tEnd/Settings.drawStep; i++) {
      float t = (float) (i * Settings.drawStep);
      float x = 2 + cos(t*PI);
      float y = 5 + sin(t*2*PI);
      point(x * Settings.sizeX,y * Settings.sizeY);
    }
    
    
  }
  


}
