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
    float a = 0;
    float b = 0;
    float c = 0;
    float d = 0;
    float e = 0;
    float f = 0;
    
    // Continue to generate, to eliminate boring equations
    while((a == 0 || c == 0) || (e == 0 || f == 0)) {
      a = random(-10, 10);
      b = random(-100, 100);
      c = random(-10, 10);
      d = random(-100, 100);
      e = random(-4, 5);
      f = random(-4, 5);
    }
    
    // Need to make variables final to use in an anonymous class
    final float c1 = a;
    final float c2 = b;
    final float c3 = c;
    final float c4 = d;
    final float c5 = e;
    final float c6 = f;
    
    
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
