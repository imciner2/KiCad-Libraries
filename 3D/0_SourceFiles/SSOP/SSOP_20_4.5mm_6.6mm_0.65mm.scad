/*
 * A generic SOP 4.5mm wide, 6.6mm long, 0.65mm pitch packaged part.
 *
 * Author: Ian McInerney
 * Created: July 16, 2015
 *
 */

module pin() {
	translate([0,0.0,0.0])cube([0.5,0.3,0.25], center=true);
	translate([0.23,0.0,0.23])rotate([0.0,40,0.0])translate([0.0,0.0,0.0])cube([0.2,0.3,0.7], center=true);
}


// Assemble the main package and the pins
module main() {
		translate([0.0,0.0,1.20/2])cube([4.5,6.60,1.20], center=true);
}

// Add the marker for pin 1
difference() {
	// The main cube
	main();

	// The pin 1 marker
	translate([1.7,-2.8,1.20])sphere(r=0.3, $fn=10);
}

// Create the pins
for ( i = [-2.925 : 0.65 : 2.925] )
{
    translate([-2.6,i,0.05])pin();
	 translate([2.6,i,0.05])rotate([0.0,0.0,180])pin();
}
