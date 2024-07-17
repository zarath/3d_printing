$fn=64;

difference() {
    cylinder(h = 2, r = 5);
    translate([0,0,-1]) cylinder(h= 4, r=4);
};

translate([10,0,0])  cylinder(h = 32, r = 4);
