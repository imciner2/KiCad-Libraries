/*
 * A generic SOIC 4mm wide, 5.8mm long, 1.27mm pitch packaged part.
 *
 * Author: Ian McInerney
 * Created: July 16, 2015
 *
 */

module pin() {
	translate([0,0.0,0.0])cube([0.5,0.41,0.20], center=true);
	translate([0.23,0.0,0.23])rotate([0.0,20,0.0])translate([0.0,0.0,0.7])cube([0.2,0.41,2.0], center=true);
}


// Assemble the main package and the pins
module main() {
		translate([0.0,0.0,3.18/2])cube([4.0,5.84,3.18], center=true);
}

// Add the marker for pin 1
difference() {
	// The main cube
	main();

	// The pin 1 marker
	translate([1.4,-2.4,3.18])sphere(r=0.3, $fn=10);
}

translate([-2.71,-1.905,0.05])pin();
translate([-2.71,-0.635,0.05])pin();
translate([-2.71,0.635,0.05])pin();
translate([-2.71,1.905,0.05])pin();

translate([2.71,-1.905,0.05])rotate([0.0,0.0,180])pin();
translate([2.71,-0.635,0.05])rotate([0.0,0.0,180])pin();
translate([2.71,0.635,0.05])rotate([0.0,0.0,180])pin();
translate([2.71,1.905,0.05])rotate([0.0,0.0,180])pin();