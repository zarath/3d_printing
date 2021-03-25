WIDTH = 33;
LENGTH = 40; 
HEIGHT = 2;

$fn = 32;

difference() {
    union() {
        cube([WIDTH, LENGTH, HEIGHT], center=true);
        translate([WIDTH / 2 - 5, 1.25, 0]) cube([5, 2.5, 15]);
        translate([-WIDTH / 2, 1.25, 0]) cube([5, 2.5, 15]);
        translate([0, LENGTH / 2, 0]) cylinder(r=5, h=HEIGHT, center=true); 
    }
    for(i = [-LENGTH/2+1:2:-LENGTH/2+12]){
        translate([8.5, i, 0]) cylinder(r= .4, h=10, center=true);
        translate([-8.5, i, 0]) cylinder(r= .4, h=10, center=true);
    }
    translate([0, LENGTH/2, 0]) cylinder(r= 1.1, h=10, center=true);
    translate([0, -LENGTH/2 + 4, 0]) cylinder(r= 1.1, h=10, center=true);

    translate([WIDTH / 2- 2.5,0,8.5 ]) rotate([90,0,0]) cylinder(r= .8, h=10, center=true);
    translate([-WIDTH / 2 + 2.5,0,8.5 ]) rotate([90,0,0]) cylinder(r= .8, h=10, center=true);

}