/*
 * Creates a Molex MINI FIT Jr connector with peg supports
 *
 * Author: Ian McInerney
 * Created: July 17, 2015
 */

use <../../Libraries/fillet.scad>

module peg() {
	cylinder(r=2.9/2, h=2.5, $fn=100, center=true);
	translate([0, 0, -2.5/2-0.5])cylinder(r1=0, r2=3.1/2, h=1.0, $fn=100, center=true);
}

module support() {
	difference() {
		peg();
		translate([0, 0, -0.5])cube([4.0, 1.5, 4.0], center=true);
	}
}

module shell() {
	cube([12.45, 13.8, 5.4], center=true);
}

module mainBody() {
	difference() {
		shell();
		translate([1.68, 4.20, 0])cube([9.1, 4, 4.2], center=true);
		translate([1.68, 0, 0])cube([9.1, 4, 4.2], center=true);
		translate([1.68, -4.20, 0])cube([9.1, 4, 4.2], center=true);
	}
	translate([1.68, 4.2, 0])polyhedron(
		points=[ [4.55, 2, -2.1], [4.55, 2, -1.0], [4.55, 1.0, -2.1], [-4.55, 2, -2.1], [-4.55, 2, -1.0], [-4.55, 1.0, -2.1]],
		faces=[ [0, 1, 2], [3, 4, 5], [2, 4, 5], [1, 2, 4] ]);
	translate([1.68, 4.2, 0])polyhedron(
		points=[ [4.55, -2, -2.1], [4.55, -2, -1.0], [4.55, -1.0, -2.1], [-4.55, -2, -2.1], [-4.55, -2, -1.0], [-4.55, -1.0, -2.1]],
		faces=[ [0, 1, 2], [3, 4, 5], [2, 4, 5], [1, 2, 4] ]);
}

module pin() {
	translate([0, 0, -1.5])cylinder(r=0.85, h=3.0, $fn=100, center=true);
	translate([0, 0, -3.25])cylinder(r1=0, r2=0.85, h=0.5, $fn=100, center=true);
	translate([0, 0, 1.0])cylinder(r=0.85, h=2.0, $fn=100, center=true);

	// Note, this is required due to not having angle= for rotate_extrude available
	translate([0.85, 0, 2.0])difference() {
		rotate([90, 0, 0])rotate_extrude($fn=100)translate([0.86, 0, 0])circle(r=0.85, $fn=100);
		translate([0, 0, -0.9])cube([2*1.8, 1.8, 1.8], center=true);
		translate([0.9, 0, 0.8])cube([1.8, 1.8, 1.8], center=true);
	}
	translate([0.85+0.5, 0 , 2.0+0.85])rotate([0, 90, 0])cylinder(r=0.85, h=1.0, $fn=100, center=true);

}


/*
 * Start to actually build the object
 */

translate([0, -4.2, 0])pin();
translate([0, 0, 0])pin();
translate([0, 4.2, 0])pin();


translate([7.325,0,5.4/2+0.4])mainBody();

translate([7.3, 4.2, -2.5/2+0.6])support();
translate([7.3, -4.2, -2.5/2+0.6])support();