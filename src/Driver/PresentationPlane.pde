
class PresentationPlane extends Plane {
  
  // Draw the plane to the screen
  void display() {
    translate(width/2,height/2);
    background(presColor);
    stroke(color(255), 50);
    
    // Draw the plane
    line(-width/2,0,width/2,0);
    line(0,-height/2,0,height/2);
  }
  
  // Draw the mode button to the screen using the right color scheme
  void drawModeButton() {
    fill(funcColor);
    rect(Settings.mX,Settings.mY,Settings.mW,Settings.mW);
  }
  
  // Write the two parametric equations to screen, using the right color scheme
  void writeEquations(Equation e) {
    // Draw the functions equation texts
    fill(color(255,0,51));
    textSize(15);
    text(e.toString(), -480, -330);
  }
}
