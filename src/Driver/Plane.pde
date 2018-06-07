/**
 * Class to hold the current plane state, used to create and display
 *    the plane to the screen
*/
abstract class Plane {

  
  final color funcColor = color(235);
  final color presColor = color(19,51,102);
  
  // Padding between each line divider
  final int paddingX = (width/2)/Settings.sizeX;
  final int paddingY = (height/2)/Settings.sizeY;
  // Length of each divider
  final int lineLength = 4;
  
  // Draw the plane to the screen using the current mode
  abstract void display();
  
  // Draw the mode button to the screen
  abstract void drawModeButton();
  
}
