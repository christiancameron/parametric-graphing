// Setup the program
void setup() {
  size(1000,700);
}

// Draw iterations
void draw() {
  background(240);
  
  // Set orgin to be the center of the screen
  translate(width/2, height/2);
  
  drawPlane();
  
  
  

}

// Draw the polar plane
void drawPlane() {
  stroke(25);
  
  // Draw the plane
  line(-width/2,0,width/2,0);
  line(0,-height/2,0,height/2);
  
  // The number of dividers for X and Y, for one quadrant 
  final int sizeX = 20;
  final int sizeY = 13;
  
  final int paddingX = (width/2)/sizeX;
  final int paddingY = (height/2)/sizeY;
  final int lineLength = 5;
  
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
