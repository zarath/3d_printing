use<roundedcube.scad>
$fn= 16;

module case_bottom() {
    difference() {
        // case size
        roundedcube([34, 54, 10]);

        // cutouts
        translate([1.8, 1.8, 5])cube([30.4, 50.4, 10]);
        translate([4, 11, 2])cube([26, 39, 10]);

        // snap
        translate([-1, -1, 9])cube([2, 56, 2]);
        translate([33, -1, 9])cube([2, 56, 2]);
        translate([-1, -1, 9])cube([36, 2, 2]);
        translate([-1, 53, 9])cube([36, 2, 2]);

        // notches
        translate([1, 4, 7])cube([2, 8, 2]);
        translate([1, 42, 7])cube([2, 8, 2]);
        translate([31, 4, 7])cube([2, 8, 2]);
        translate([31, 42, 7])cube([2, 8, 2]);

        // sma
        translate([1.8, -2, 4])cube([8, 8, 8]);
        translate([13, -2, 4])cube([8, 8, 8]);
        translate([24.2, -2, 4])cube([8, 8, 8]);

        // resistors
        translate([10.5, 5, 4])cube([2, 4, 2]);
        translate([21.5, 5, 4])cube([2, 4, 2]);

        // mini usb 
        translate([20, 35.8 ,1])cube([15, 9, 4.4]);
        translate([18, 33.8 ,4])cube([14.2, 13, 2]);

        // usb
        translate([11, 49 , 5])cube([12, 19, 5]);
        translate([9.5, 47 , 4])cube([15, 6, 2]);

        // notches


    };
};

module case_top() {
    difference() {
        // case size
        roundedcube([34, 54, 10]);

        // cutout
        translate([1.9, 1.9, 5])cube([30.2, 50.2, 10]);
    };
};

translate([0, 0, 0])case_bottom();
// translate([0, 0, 15])case_top();

