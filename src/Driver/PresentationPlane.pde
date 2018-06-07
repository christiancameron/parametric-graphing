
class PresentationPlane extends Plane {
  
  // Draw the plane to the screen
  void display() {
    translate(width/2,height/2);
    background(presColor);
    stroke(25);
    
    // Draw the plane
    line(-width/2,0,width/2,0);
    line(0,-height/2,0,height/2);
  }
  
  void drawModeButton() {
    fill(funcColor);
    rect(Settings.mX,Settings.mY,Settings.mW,Settings.mW);
  }
}
