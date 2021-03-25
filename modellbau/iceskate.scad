WIDTH = 33;
LENGTH = 40; 
HEIGHT = 2;

$fn = 32;

module disk() {
    translate([3, 0, 0])cube([4,4,3], center=true);
    difference() {
        cylinder($fn=64, r=22, h=3, center=true);
        cylinder(r=1.5, h=5, center=true);
        translate([0,11.5,1]) cube(size=[3, 19, 3], center=true);
        translate([0,-11.5,1]) cube(size=[3, 19, 3], center=true);
    }
}

module  base() {
    difference() {
        union() {
            cylinder($fn=64, r=27, h=18, center=true);
            translate([17.5,0,0]) cube([35,16,18], center=true);
        }
        cylinder(r=2, h=20, center=true);

        translate([0,0,9])cylinder($fn=64, r=23, h=8, center=true);
        translate([15.5,0,-4])cube(size=[37, 12, 10], center=true);

    }
    translate([34,0,-4])cube(size=[2, 5, 10], center=true);
}

//disk();
base();
