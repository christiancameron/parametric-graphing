/**
  * The equation factory class, generates and returns random parametric equations.
  * Each equation will have a different color code, so the plot can be read
  * @author Christian Cameron
**/

class EquationFactory {

  /**
   * Create and returns a new random Equation
   * Follows certain rules, the randomness is mostly obtained from random constants
  */
  Equation randomEquation() {  
    // Random constants that are applied to the equation
    int a = 0;
    int b = 0;
    int c = 0;
    int d = 0;
    int e = 0;
    int f = 0;
    
    // Continue to generate, to eliminate boring equations
    while((a == 0 || c == 0) || (e == 0 || f == 0)) {
      a = (int) random(-10, 10);
      b = (int) random(-100, 100);
      c = (int) random(-10, 10);
      d = (int) random(-100, 100);
      e = (int) random(-4, 5);
      f = (int) random(-4, 5);
    }
    
    // Need to make variables final to use in an anonymous class
    final int c1 = a;
    final int c2 = b;
    final int c3 = c;
    final int c4 = d;
    final int c5 = e;
    final int c6 = f;
    
    
    // Create the equation with the new constants
    return new Equation() {
      public float getX(float t) {
        return c1*t*pow(sin(c2*t),c5);
      }
      
      public float getY(float t) {
        return c3*t*pow(cos(c4*t),c6);
      }
      
      public String toString() {
        String msg = "f(t) = " + c1 + "*t*(sin(" + c2 + "*t)^" + c5 + "\n";
        msg += "g(t) = " + c3 + "*t*(cos(" + c4 + "*t)^" + c6 + "\n";
        return msg;
      }
    }; 
  }
}
