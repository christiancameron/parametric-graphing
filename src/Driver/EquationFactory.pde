/**
  * The equation factory class, generates and returns random parametric equations.
  * Each equation will have a different color code, so the plot can be read
  * @author Christian Cameron
**/

class EquationFactory() {
  
  int tStart;
  int tEnd;
  
  // Creates a new EquationFactory such that the domain of t, for all generated Equations is [lowerBound, upperBound)
  EquationFactory(int lowerBound, int upperBound) {
    this.tStart = lowerBound;
    this.tEnd = upperBound;
  }

  /**
   * Create and returns a new random Equation
   * Follows certain rules, the randomness is mostly obtained from random constants
  */
  Equation randomEquation() {
    
    // Random constants that are applied to the equation
    int a, b, c, d;
    // Continue to generate, to eliminate boring equations
    while((a != 0 && c != 0) || (b != 0 && d != 0)) {
      int a = (int) random(0.01, 10);
      int b = (int) random(0.01, 100);
      int c = (int) random(0.01, 10);
      int d = (int) random(0.01, 100);
    }
    
    new Equation(color((int)random(0,255),150,(int)random(0,255))) {
      public float getX(float t) {
        return a*t*sin(b*t);
      }
      
      public float getY(float t) {
        return c*t*cos(d*t);
      }
    }; 
  }







}
