# Parametric Graphing Tool
Graph parametric equations in processing

#### Installation
* Download Processing
* Open the src/Driver folder in the Processing IDE
* To change the tick lines for the graph, modify ``` sizeX ``` and ``` sizeY ``` in ``` Settings.java ```
* To change the visual accuracy of the display, modify ``` drawStep ``` in ``` Settings.java ```
  - Decrease the value to increase accuracy, increase to decrease accuracy
* To change the domain of ** t ** modify ``` tStart ``` and ``` tEnd ``` inside ``` Equation.pde ```
* To change the parametric function, modify ``` getX(float) ``` and ``` getY(float) ``` inside ``` Equation.pde ```


#### Additional Notes
- ``` getY(float) ``` is negated inside the display method to flip the image so it correctly represents the mathematical graph.
- Canvas size should not be modifed; however, if you decrease or increase the size, then the variable ``` ppu ``` inside ``` Settings.java ``` needs to be updated with the new canvas width. The width and height needs to be hardcoded because of the way Processing uses ``` size() ```
- ``` draw() ``` inside ``` Driver.pde ``` is not needed with this implementation. If you want to redraw the equation, then move the ``` translate() ``` and ``` display() ``` methods from ``` setup() ``` to ``` draw() ```
- To change the tick length, modify ``` lineLength ``` inside ``` Plane.ide ```
