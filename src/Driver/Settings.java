// Settings for the program, needs to be in a seperate java file
public class Settings {
  
  // The domain of t, such that t is drawn from [lowerBound, upperBound)
  public final static int lowerBound = -10;
  public final static int upperBound = 10;
  
  // The number of sections a given quadrant obtains
  public final static int sizeX = 50;
  public final static int sizeY = 30;
  
  //Equation color, 0 = black
  public final static int graphColor = 0x000000;
  
  // The pixels per unit, used to help draw, should not be modifed unless canvas size changes
  public final static int ppu = (1000/2)/sizeX;

  // The draw step of interating t-values
  public final static double drawStep = .00005;
}
