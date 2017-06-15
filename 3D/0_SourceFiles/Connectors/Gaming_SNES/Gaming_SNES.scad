/*
 * Creates a SNES controller connector 3D model
 *
 * Author: Ian McInerney
 * Created: July 17, 2015
 */

use <../../Libraries/fillet.scad>



// A pin
module pin() {
	cylinder(r=0.6, h=19.9, $fn=100, center=true);
}



// The external plastic shell
module shell() {
	difference() {
		// The main body
		cube([12.3, 38.55, 16.05], center=true);

		// The large rounded end
		translate([6.15, 19.275, 0])rotate([0, 0, 180])fillet(r=6.1, h=16.1);
		translate([-6.15, 19.275, 0])rotate([0, 180, 180])fillet(r=6.1, h=16.1);

		// The small edges
		translate([-6.15, -19.275, 0])rotate([0, 0, 0])fillet(r=1.75, h=16.1);
		translate([6.15, -19.275, 0])rotate([0, 0, 90])fillet(r=1.75, h=16.1);
	}

	// The pieces on the ends
	hull() {
		translate([0, -19.27, 4.575])cube([12.30, 3.89, 2], center=true);
		translate([0, 15.07, 4.575])cylinder(r=6.15, h=2.0, $fn=100, center=true);
	}
}



// The internal cutout of the body
module internalCutout() {
	// Hollow out the inside of the body
	translate([0, 0, 1.05]) {
		difference() {
			cube([9.52, 35.77, 15], center=true);

			// The large end
			translate([4.76, 17.885, 0])rotate([0, 0, 180])fillet(r=4.76, h=15.1);
			translate([-4.76, 17.885, 0])rotate([0, 0, -90])fillet(r=4.76, h=15.1);

			// The small end
			translate([-4.76, -17.885, 0.1])rotate([0, 0, 0])fillet(r=1, h=15.1);
			translate([4.76, -17.885, 0.1])rotate([0, 0, 90])fillet(r=1, h=15.1);
		}
	}
}


module FourPin() {

	// The pins
	for (i = [-6.0 : 4.0 : 6.0]) {
		translate([0, i, 0])pin();
	}

	translate([0, 0, 3.15]) {
		difference() {
			cube([4.1, 16, 13.6], center=true);

			translate([0, -2, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
			translate([0, 2, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
			translate([0, -6, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
			translate([0, 6, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
		}
	}
}


module ThreePin() {

	// The pins
	for (i = [-4 : 4.0 : 4]) {
		translate([0, i, 0])pin();
	}

	translate([0, 0, 3.15]) {
		difference() {
			cube([4.1, 12.5, 13.6], center=true);

			translate([0, 0, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
			translate([0, 4, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
			translate([0, -4, 0])cylinder(r=1.65, h=13.7, $fn=100, center=true);
			translate([2.05, 6.25, 0])rotate([0, 0, 180])fillet(r=2.05, h=13.7);
			translate([-2.05, 6.25, 0])rotate([0, 0, -90])fillet(r=2.05, h=13.7);
		}
	}
}


/*
 * Start to actually build the object
 */


// Piece together the main body
translate([0, 1.515, 11.225]) {
	difference() {
		shell();
		internalCutout();
	}
}


// Header immediately over the pins
translate([0, 1.25, 1.6]){
	difference(){
		cube([4.10, 30.5, 3.20], center=true);
		translate([-2.05, -15.25, 0])fillet(r=2.05, h=3.3);
		translate([2.05, -15.25, 0])rotate([0, 0, 90])fillet(r=2.05, h=3.3);
		translate([-2.05, 15.25, 0])rotate([0, 0, -90])fillet(r=2.05, h=3.3);
		translate([2.05, 15.25, 0])rotate([0, 0, 180])fillet(r=2.05, h=3.3);
	}
}

// Make 4 of the pins
translate([0, -6, 6.85])FourPin();

// Make 3 of the pins
translate([0, 10.5, 6.85])ThreePin();