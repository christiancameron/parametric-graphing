
class FunctionalPlane extends Plane {
  
  // Draw the plane to the screen
  void display() {
    translate(width/2,height/2);
    
    background(funcColor);
    stroke(25);
    
    // Draw the plane
    line(-width/2,0,width/2,0);
    line(0,-height/2,0,height/2);
    
    // Draw the X lines
    int buffer = paddingX;
    for(int i = 0; i < Settings.sizeX; i++) {
      // Positive X lines
      line(buffer,-lineLength,buffer,lineLength);
      // Negative X lines
      line(-buffer,-lineLength,-buffer,lineLength);
      buffer += paddingX;
    }
    
    buffer = paddingY;
    for(int i = 0; i < Settings.sizeY; i++) {
      // Positive Y lines
      line(-lineLength,buffer,lineLength,buffer);
      
      // Negative Y lines
      line(-lineLength,-buffer,lineLength,-buffer);
      buffer += paddingY;
    }
  }
  
  // Draw the mode button to the screen using the right color scheme
  void drawModeButton() {
    strokeWeight(1);
    fill(presColor);
    rect(Settings.mX,Settings.mY,Settings.mW,Settings.mW);
  }
  
  // Write the two parametric equations to screen, using the right color scheme
  void writeEquations(Equation e) {
    textFont(font);
    // Draw the functions equation texts
    fill(color(presColor));
    textSize(18);
    text(e.toString(), -480, -330);
  }
}
