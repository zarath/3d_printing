$fn= 16;

module plate() {
    translate([2, 2, 0])
    minkowski() {
        cube([56, 41, 2]);
        cylinder(r=2, h=2);
    };
    translate([30, 22.5, 0])
    cylinder($fn=64, r=18.5, h=4, center=true);
};

module screwhole() {
    cylinder(r=1.5, h=20, center=true);
    translate([0, 0, 4]) cylinder(r=2.5, h=4, center=true);
};

module base() {
    difference() {
        plate();
        translate([14, 6.5, 0]) screwhole();
        translate([14, 38.5, 0]) screwhole();
        translate([46, 6.5, 0]) screwhole();
        translate([46, 38.5, 0]) screwhole();
    };
};

// difference() {
//     base();
//     translate([7.25, 9.5, -3]) cube([45.5, 26, 8]);
//     translate([6, 8, 1.5]) cube([48, 29, 8]);
//     translate([18.5, 8.5, -3]) cube([23, 28, 8]);
// }

base ();