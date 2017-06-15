/*
 * A Sharp GP1A57HRJ00F Photo Interrupter
 *
 */

module pin() {
    translate([0.0, 0.0, -2.0]) cylinder(r=0.45, h=4.0, $fn=100, center=true);
}

module mainBody() {
    difference() {
        cube([18.6, 5, 15.2], center=true);
        translate([0.0, 0.0, 1.6]) cube([10, 6.0, 12.2], center=true);
    }
}

translate([0.0, 0.0, 7.6])mainBody();
translate([0.0, 0.0, -0.35]) cylinder(r=1.5/2, h=0.7, $fn=100, center=true);

translate([7.6, 2.54/2, 0.0]) pin();        // Pin 1
translate([7.6, -2.54/2, 0.0]) pin();       // Pin 2
translate([-7.6, 2.54/2, 0.0]) pin();       // Pin 3
translate([-6.1, 0, 0.0]) pin();            // Pin 4
translate([-7.6, -2.54/2, 0.0]) pin();      // Pin 5