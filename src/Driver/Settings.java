// Settings for the program, needs to be in a seperate java file
public class Settings {
  
  // Canvas size
  public final static int canvasWidth = 1000;
  public final static int canvasHeight = 700; 
  
  // The number of sections a given quadrant obtains
  public final static int sizeX = 5;
  public final static int sizeY = 3;
  
  public final static int ppu = 1000
  
  // Possible max values for an equation's t parameter.
  public final static int tMax = (int)sizeX*2;
  
  // The draw step of interating t-values
  public final static double drawStep = 0.05;
}
