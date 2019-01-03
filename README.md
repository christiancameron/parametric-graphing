# Parametric Graphing Tool
#### Introduction
Parametric equations use transformations of independent variables to graph a function.
The engine randomly generates, graphs, and presents parametric equations in two different viewing modes: light and dark.

#### Examples
![Alt text](Images/DarkExample.png?raw=true "DarkExample")

![Alt text](Images/LightExample.png?raw=true "LightExample")

#### Installation
* Download Processing
* Open the src/Driver folder in the Processing IDE
* To change the tick lines for the graph, modify ``` sizeX ``` and ``` sizeY ``` in ``` Settings.java ```
* To change the visual accuracy of the display, modify ``` drawStep ``` in ``` Settings.java ```
  - Decrease the value to increase accuracy, increase to decrease accuracy
* To change the domain of **t** modify ``` lowerBound ``` and ``` upperBound ``` inside ``` Settings.java ```

#### Tutorial
Run the Driver Processing file, it will open a Processing canvas. The parametric equations are shown in the upper left corner, in case you want to recreate the equation elsewhere. A button is drawn in the lower left corner, when pressed it will redraw a new random parametric equation. Some parametric equations might not "appear" on the graph- this is due to the randomized constant generator: just press the random button to get a better equation! The display method uses thousands of points to redraw the equation. Therefore, there might be spaces "breaking" up the graph. Enjoy!

#### Additional Notes
- ``` getY(float) ``` is negated inside the display method to flip the image so it correctly represents the mathematical graph.
- Canvas size should not be modifed, as it will break the layout, which is hardcoded. Positions are hardcoded because of the way Processing uses ``` size() ```
- ``` draw() ``` inside ``` Driver.pde ``` is not needed with this implementation. If you want to redraw something every frame, then add it here.
- To change the tick length, modify ``` lineLength ``` inside ``` Plane.pde ```
