/*
 * A generic SOT-363 packaged part.
 *
 * Author: Ian McInerney
 * Created: June 25, 2013
 *
 */

module pin() {
	translate([0,0.0,0.0])cube([0.3,0.48,0.10], center=true);
	translate([0.1,0.0,0.0])rotate([0.0,30,0.0])translate([0.0,0.0,0.45])cube([0.12,0.48,0.9], center=true);
}


// Assemble the main package and the pins
module main() {
		translate([0.0,0.0,0.65])cube([1.4,3.0,1.1], center=true);
}

// Add the marker for pin 1
difference() {
	// The main cube
	main();

	// The pin 1 marker
	translate([-0.45,1.25,1.32])sphere(r=0.2, $fn=10);
}

translate([-1.15,0.0,0.05])pin();
translate([-1.15,-0.95,0.05])pin();
translate([-1.15,0.95,0.05])pin();

translate([1.15,0.0,0.05])rotate([0.0,0.0,180])pin();
translate([1.15,-0.95,0.05])rotate([0.0,0.0,180])pin();
translate([1.15,0.95,0.05])rotate([0.0,0.0,180])pin();