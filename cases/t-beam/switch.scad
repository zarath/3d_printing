module  plate() {
    difference() {
        union() {
            cube([12.6, 81.0, 1.8]);
            for(dy=[2.0: 4.0: 40.0]) {
                translate([3.0, dy, 0.0]) 
                cube([6.0, 2.0, 3.0]);
            }
            for(dy=[74.0: 4.0: 78.0]) {
                translate([3.0, dy, 0.0]) 
                cube([6.0, 2.0, 3.0]);
            }
            translate([3.0, 56, 0.0]) cube([6.0, 4.5, 3.0]);
            translate([3.0, 66, 0.0]) cube([6.0, 4.5, 3.0]);
        }
        translate([1.8, 41, -1.0]) cube([9.0, 12.0, 3.0]);
        translate([2.7, 55.7, -1.0]) cube([0.3, 5.1, 3.0]);
        translate([2.7, 65.7, -1.0]) cube([0.3, 5.1, 3.0]);
        translate([2.7, 55.7, -1.0]) cube([7.4, 0.3, 3.0]);
        translate([2.7, 65.7, -1.0]) cube([7.4, 0.3, 3.0]);
        translate([2.7, 60.5, -1.0]) cube([7.4, 0.3, 3.0]);
        translate([2.7, 70.5, -1.0]) cube([7.4, 0.3, 3.0]);
        translate([9.0, 56.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 57.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 58.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 59.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 66.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 67.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 68.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 69.7, -1.0]) cube([1.1, 0.3, 3.0]);
        translate([9.0, 55.7, 1.5]) cube([2.0, 5.1, 3.0]);
        translate([9.0, 65.7, 1.5]) cube([2.0, 5.1, 3.0]);
    }
}

module button() {
    cube([6.0, 4.5, 0.8]);
    translate([3.0, 0.5, 0.0]) cube([2.0, 3.5, 2.3]);
}

plate();
translate([15.0, 56.0, 0.0]) button();
translate([15.0, 66.0, 0.0]) button();