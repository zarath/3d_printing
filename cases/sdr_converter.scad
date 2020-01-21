use<roundedcube.scad>
$fn= 16;

module case_bottom() {
    difference() {
        // case size
        roundedcube([34, 54, 10]);

        // cutouts
        translate([1.8, 1.8, 5])cube([30.4, 50.4, 10]);
        translate([4, 11, 2])cube([26, 39, 10]);

        // edge
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


    };
};

module case_top() {
    difference() {
        // case size
        roundedcube([34, 54, 4]);

        // cutout
        translate([1.8, 1.8, 0])cube([30.4, 50.4, 2]);

        // edge
        translate([1, 1, -1])cube([2, 52, 2]);
        translate([31, 1, -1])cube([2, 52, 2]);
        translate([1, 1, -1])cube([32, 2, 2]);
        translate([1, 51, -1])cube([32, 2, 2]);

        // sma
        translate([1.8, -2, -6])cube([8, 8, 8]);
        translate([13, -2, -6])cube([8, 8, 8]);
        translate([24.2, -2, -6])cube([8, 8, 8]);

        // usb
        translate([11, 49 , -4])cube([12, 19, 5]);

        // led
        translate([11, 3 , 3])cube([2, 2, 4]);
        translate([23, 3 , 3])cube([2, 2, 4]);

        // button
        translate([15, 20 , 1.75])cube([15, 6, 2]);
        translate([17, 20 , 1.75])cube([13, 0.5, 3]);
        translate([17, 25.5 , 1.75])cube([13, 0.5, 3]);
        translate([29.5, 20 , 1.75])cube([0.5, 6, 3]);

    };
        // button
        translate([6, 22 , 1])cube([2, 2, 2]);
        translate([26, 22 , 1])cube([2, 2, 2]);

    // snap
        translate([2, 5,-2.5])cube([2, 6, 6]);
        translate([2.4, 8,-1.5])sphere(1.1);
        translate([2, 41, -2.5])cube([2, 6, 6]);
        translate([2.4, 44,-1.5])sphere(1.1);
        translate([30, 5, -2.5])cube([2, 6, 6]);
        translate([31.4, 8,-1.5])sphere(1.1);
        translate([30, 41, -2.5])cube([2, 6, 6]);
        translate([31.4, 44,-1.5])sphere(1.1);

};

//translate([0, 0, 0])case_bottom();
translate([0, 0, 15])case_top();

