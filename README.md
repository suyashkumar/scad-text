# scad-text
Simple OpenSCAD library to add 3D text (with optional pedestal to print vertical or sheer text) to OpenSCAD models. 

# Usage
You must place place the `scad_text.scad` file in your current path and import it (using `import <scad_text.scad>`).

The following function is exposed: `writeText(x, y, z, textIn, depth=4, pedestal=0)`. This function draws the `textIn` string at the (x,y,z) coordinates with a depth of 4 units and with a pedestal if the pedestal value is set to 1. Sample code is in `example.scad` and is copied below: 
```OpenSCAD
include <scad_text.scad>
translate([0,6,0])cube(10, center=true);
writeText(0,0,0, "SK", pedestal=1);
``` 

Produces:

[![Foo](img/example.png)](https://github.com/suyashkumar/scad-text/blob/master/example.stl)

