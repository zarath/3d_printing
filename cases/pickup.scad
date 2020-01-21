$fn= 16;

module case1() {
    difference() {
        // case size
        cube([14,22,6]);
        translate([2, 2, 2])cube([14,18,6]);
        translate([1, 1, 3.4])cube([14,20,1.6]);
    };
};

case1();

