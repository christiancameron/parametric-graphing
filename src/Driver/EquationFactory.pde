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
    final ArrayList<Integer> sConstants = new ArrayList<Integer>(4);
    final ArrayList<Integer> mConstants = new ArrayList<Integer>(4);
    final ArrayList<Integer> lConstants = new ArrayList<Integer>(4);
    
    for(int i = 0; i < 4; i++) {
      sConstants.add((int)random(-5,5.01));
      mConstants.add((int)random(-10,10.01));
      lConstants.add((int)random(-100,100.01));
    }

    // Create the equation with the new constants
    return new Equation() {
      public float getX(float t) {
        return mConstants.get(0)*t*pow(sin(lConstants.get(0)*t),sConstants.get(0)) + mConstants.get(1)*t*pow(cos(lConstants.get(1)*t),sConstants.get(1));
      }
      
      public float getY(float t) {
        return mConstants.get(2)*t*pow(sin(lConstants.get(2)*t),sConstants.get(2)) + mConstants.get(3)*t*pow(cos(lConstants.get(3)*t),sConstants.get(3));
      }
      
      public String toString() {
        String msg = "f(t) = " + mConstants.get(0) + "*t*(sin(" + lConstants.get(0) + "*t)^" + sConstants.get(0) + " + " + mConstants.get(1) + "*t*(cos(" + lConstants.get(1) + "*t)^" + sConstants.get(1) + "\n";
        msg += "g(t) = " + mConstants.get(2) + "*t*(sin(" + lConstants.get(2) + "*t)^" + sConstants.get(2) + " + " + mConstants.get(3) + "*t*(cos(" + lConstants.get(3) + "*t)^" + sConstants.get(3) + "\n";
        return msg;
      }
    }; 
  }
}
