// Settings for the program, needs to be in a seperate java file
public class Settings {
  
  // The number of sections a given quadrant obtains
  public final static int sizeX = 5;
  public final static int sizeY = 3;
  
  // The pixels per unit, used to help draw, should not be modifed unless canvas size changes
  public final static int ppu = (1000/2)/sizeX;

  // The draw step of interating t-values
  public final static double drawStep = .001;
}
