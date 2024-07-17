$fn=64;
difference() {
    union() {
        translate([0, 0, 0]) cylinder(h = 45, r = 6);
        translate([31.75, 0, 0]) cylinder(h = 45, r = 6);
        translate([0, 8, 0]) cylinder(h = 45, r = 6);
        translate([31.75, 8, 0]) cylinder(h = 45, r = 6);
        translate([0, -6, 0]) cube([31.75, 20, 45]);;
        translate([-6, 0, 0]) cube([43.75, 8, 45]);;
    }
    translate([31.75 / 2.0, -8.0, 45.0 / 2.0]) rotate([270,0,0]) cylinder(h = 24, r = 11);
    translate([5, -8.0, 45.0 / 2.0]) cube([22,24,25]); 
    
    translate([0, 4, -1]) cylinder(h = 47, r = 3.5);
    translate([31.75, 4, -1]) cylinder(h = 47, r = 3.5);
}