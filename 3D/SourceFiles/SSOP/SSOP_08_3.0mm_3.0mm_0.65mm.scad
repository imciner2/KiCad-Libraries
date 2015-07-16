/*
 * A generic SOP 4.5mm wide, 6.6mm long, 0.65mm pitch packaged part.
 *
 * Author: Ian McInerney
 * Created: July 16, 2015
 *
 */

module pin() {
	translate([0,0.0,0.0])cube([0.6,0.3,0.20], center=true);
	translate([0.5,0.0,0.28])rotate([0.0,60,0.0])translate([0.0,0.0,0.0])cube([0.2,0.3,1.1], center=true);
}


// Assemble the main package and the pins
module main() {
		translate([0.0,0.0,0.85/2])cube([3.0,3.0,0.85], center=true);
}

// Add the marker for pin 1
difference() {
	// The main cube
	main();

	// The pin 1 marker
	translate([1.1,-1.1,0.85])sphere(r=0.25, $fn=10);
}

// Create the pins
for ( i = [-0.975 : 0.65 : 0.976] )
{
    translate([-2.3,i,0.05])pin();
	 translate([2.3,i,0.05])rotate([0.0,0.0,180])pin();
}
