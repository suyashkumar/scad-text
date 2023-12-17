/*
 * scad_text.scad
 * This library has useful functions for adding 3D text
 * to objects with or without a pedestal (for vertical/sheer text)
 * @author: Suyash Kumar <suyashkumar2003@gmail.com>
 */


module makeText(textIn, depth, size=3.5) {
    linear_extrude(height=depth,center = true, convexity = 10, slices = 19, scale = 1.0) text(textIn,halign="center",size=size,font="Helvetica:style=Bold");
}
module makePedestal(textIn, depth){
    // Assumes a text size of 3.5.
    len_per_letter=3.3;
    base_width=len_per_letter*len(textIn); 
    difference(){
        translate([0,-2.5,0]) cube([base_width,5,4], center=true);
        rotate([40,0,0]) translate([0,-2.5,4]) cube([base_width+1,7,4], center=true);
    }
}
module writeTextWithPedestal(x, y, z, textIn, depth=4){
    translate([x,y,z]) rotate([90,0,0]) union() {
            makeText(textIn, depth);
            makePedestal(textIn, depth);
    }
}
module writeText(x, y, z, textIn, depth=4, size=5) {
        translate([x,y,z]) rotate([90,0,0]) makeText(textIn, depth, size);
}


// writeTextWithPedestal(0,0,0,"SK",4);
