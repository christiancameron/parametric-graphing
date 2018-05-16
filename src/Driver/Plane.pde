

/**
 * Class to hold the current plane state, used to create and display
 *    the plane to the screen
*/
class Plane {
    
  // Padding between each line divider
  final int paddingX = (width/2)/Settings.sizeX;
  final int paddingY = (height/2)/Settings.sizeY;
  // Length of each divider
  final int lineLength = 5;
  
  // Draw the plane to the screen
  void display() {
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

}
