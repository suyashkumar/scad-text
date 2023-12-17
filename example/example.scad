/*
 * example.scad
 * Shows a quick example of using the scad_text library
 * @author: Suyash Kumar <suyashkumar2003@gmail.com>
 */

include <scad_text.scad>

translate([0,6,0])cube(10, center=true);
writeTextWithPedestal(0,0,0,"SK",4);