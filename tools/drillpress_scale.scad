use<threads.scad>

$fn=60;
height = 10;
dia = 40;
thickness = 6;
arm_length = 33;

translate([0, 0, height / 2]) difference() {
    union(){
        translate([dia / 2 - thickness, 0, - height / 2]) cube(size=[thickness * 2, arm_length, height]);
        rotate([0, 0, -45]) translate([-2 * thickness, 0, - height / 2]) cube(size=[thickness * 2, 35, height]);
        cylinder(d=dia + thickness * 2, h=height, center=true);
        translate([dia / 2, arm_length, 0]) cylinder(d=thickness * 2, h=height, center=true);
    }
    cylinder(d=dia, h=height + 2, center=true);
    translate([dia / 2, arm_length, 0]) {
        // cylinder(d=6, h=height + 2 , center=true);
        translate([0, 0, - height / 2 -1]) metric_thread (diameter=6, pitch=1, length=height + 2);
        translate([0,0, -height /2]) cylinder(d=7.3, h=4 , center=true);
    }
    translate([13, 40]) cube(size=[2, 80, height + 2], center=true);

    rotate([90, 0, 45]) translate([23, 0, 0]) {
        cylinder(d = 3, h=30, center=true);
        translate([0,0, 14])cylinder(d = 5.1, h=6, center=true);
        translate([0,0, -14])cylinder($fn=6, d = 5.1, h=6, center=true);
    }
}
