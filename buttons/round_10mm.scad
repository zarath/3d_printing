$fn= 32;



difference() {
cylinder(r=5, h=13, center=true);
translate([0,0,-2]) {
    cube(size=[3, 3, 13], center=true);
    cube(size=[1, 6, 13], center=true);
    difference() {
        cylinder(r=3.5, h=13, center=true);
        cylinder(r=2.75, h=13, center=true);
    }
    translate([0,0,-10])cylinder(r=3.5, h=13, center=true);
}

}