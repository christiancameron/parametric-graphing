/**
 * Class to hold the current plane state, used to create and display
 *    the plane to the screen
*/
class Plane {
  
  // The number of dividers for X and Y, for one quadrant 
  final int sizeX = 20;
  final int sizeY = 13;
    
  // Padding between each line divider
  final int paddingX = (width/2)/sizeX;
  final int paddingY = (height/2)/sizeY;
  
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
    for(int i = 0; i < sizeX; i++) {
      // Positive X lines
      line(buffer,-lineLength,buffer,lineLength);
      // Negative X lines
      line(-buffer,-lineLength,-buffer,lineLength);
      buffer += paddingX;
    }
    
    buffer = paddingY;
    for(int i = 0; i < sizeY; i++) {
      // Positive Y lines
      line(-lineLength,buffer,lineLength,buffer);
      
      // Negative Y lines
      line(-lineLength,-buffer,lineLength,-buffer);
      buffer += paddingY;
    }
  }

}
