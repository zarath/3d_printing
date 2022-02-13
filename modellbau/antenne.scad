$fn= 60;

rotate([0 ,90, 0])
difference(){
    union(){
        rotate([90, 0, 0]) cylinder(r=0.5, h=12, center=true);
        translate([0, -5.5, 0]) cylinder(r=0.5, h=10, center=true);
        translate([0, -2.5, 0]) cylinder(r=0.5, h=9, center=true);
        translate([0, -1.0, 0]) cylinder(r=0.5, h=8.7, center=true);
        translate([0, 2.0, 0]) cylinder(r=0.5, h=8.4, center=true);
        translate([0, 5.5, 0]) cylinder(r=0.5, h=8, center=true);
        translate([0, -1.0, 0]) rotate([0, 90, 0]) cylinder(r=.75, h=1, center=true);
    }
    translate([0, -1.0, 0]) rotate([0, 90, 0]) cylinder(r=.35, h=2, center=true);
}
