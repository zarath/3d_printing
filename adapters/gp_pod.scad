use <threadlib/threadlib.scad>

module top() {
    $fn=64;
    translate([0, 0, 2]) difference() {
        union() {
            cube(16, center=true);
            translate([0, 0, 8]) rotate([0, 90, 0]) cylinder(h = 16, r = 8, center=true);
            translate([0, 0, 8]) rotate([0, 90, 0]) cylinder(h = 22, r = 6.5, center=true);
            translate([0, 0, 0]) sphere(r = 11.5);
            translate([0, 0, -11.5]) cylinder(h = 23, r = 11.5, center=true);

        }
        translate([0, 0, 8]) rotate([0, 90, 0]) cylinder(h = 24, r = 2.75, center=true);
        translate([-10, 0, 8]) rotate([0, 90, 0]) cylinder(h = 4, r = 7, center=true);
        translate([10, 0, 8]) rotate([0, 90, 0]) cylinder(h = 4, r = 4.2, center=true, $fn=6);
        translate([-3, 0, 8]) rotate([0, 90, 0]) cylinder(h = 3, r = 8.1, center=true);
        translate([3, 0, 8]) rotate([0, 90, 0]) cylinder(h = 3, r = 8.1, center=true);
        translate([-3, 0, 10]) cube([3, 25, 16], center=true);
        translate([3, 0, 10]) cube([3, 25, 16], center=true);
        translate([0, 0, -17]) cube([25, 25, 30], center=true);
        translate([0, 0, -6]) difference() {
            cylinder(h = 6, r=12.0);
            translate([0, 0, -1]) cylinder(h = 8, r=9.95);
        }
}
}

module screwmount() {
    $fn=64;
    difference() {
        translate([0, 0, 7]) cylinder(h = 14, r = 11.5, center=true);
        translate([0, 0, 0]) tap("20-UN-1/4", turns=10);
    }
}

module cone() {
    $fn=64;
    difference() {
        cylinder(h = 27, r1 =12.5, r2 = 11.5);
        translate([0, 0, -1]) cylinder(h = 29, r1 = 10.3, r2 = 10.0);
    }
}

module ring() {
    difference() {
        cylinder(h = 3.5, d = 12.5);
        translate([0, 0, -1]) cylinder(h = 5.5, d = 7.5);
    };
}

module cone2() {
    $fn=64;
    difference() {
        cylinder(h = 10, r = 11.5);
        translate([0, 0, -1]) cylinder(h = 12, r = 1.75);
        translate([0, 0, -1]) cylinder(h = 2.3, d = 14);
        translate([0, 0, -1]) difference() {
          cylinder(h = 3.5, d = 12.5);
          translate([0, 0, -1]) cylinder(h = 5.5, d = 7.8);
        };
        translate([0, 0, 6]) cylinder(h = 2.5, d = 6.5, center=true, $fn=6);
        translate([10, 0, 6]) cube([20, 6, 2.5], center=true);
    }
}

difference () {
    union() {
        cone2();
        translate([0, 0, 8]) top();
    }
    translate([0, 0, -1]) cylinder(h = 12, r = 1.75);
}
// translate([0, 0, 0]) screwmount();
// translate([0, 0, 12]) top();