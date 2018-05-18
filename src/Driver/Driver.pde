Plane plane;
EquationFactory factory;

// Setup the program
void setup() {
  size(1000,700);
  background(240);
  plane = new Plane();
  
  factory = new EquationFactory();
  // Generate the first equation
  Equation e = factory.randomEquation();
  
  // Draw the functions equations
  stroke(equations.get(i).getColor());
  textSize(25);
  text(equations.get(i).toString(), 25, 25);
  println(equations.get(i).toString());
   
  // Set orgin to be the center of the screen
  translate(width/2, height/2);
  
  //Draw the plane background to the screen
  plane.display();
  
  //Draw the equations
  for(int i = 0; i < Settings.numEqu; i++) {
    equations.get(i).display();
  }
  println("done graphing"); 
}

// Draw iterations, not needed with this implementation
void draw() {} //<>//
