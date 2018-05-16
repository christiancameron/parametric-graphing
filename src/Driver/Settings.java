// Settings for the program, needs to be in a seperate java file
public class Settings {
  
  // The number of sections a given quadrant obtains
  public final static int sizeX = 50;
  public final static int sizeY = 30;
  
  // The pixels per unit, used to help draw
  public final static int ppu = 500/sizeX;

  // The draw step of interating t-values
  public final static double drawStep = 0.001;
}
