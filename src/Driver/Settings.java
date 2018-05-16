// Settings for the program, needs to be in a seperate java file
public class Settings {
  
  // The number of sections a given quadrant obtains
  public final static int sizeX = 5;
  public final static int sizeY = 3;
  
  // The pixels per unit, used to help draw
  public final static int ppu = 500/sizeX;
  
  // Possible max values for an equation's t parameter.
  public final static int tMax = (int)sizeX*2;
  
  // The draw step of interating t-values
  public final static double drawStep = 0.05;
}
