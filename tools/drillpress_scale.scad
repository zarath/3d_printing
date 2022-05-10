    use<threads.scad>

$fn=60;
height = 10;
dia = 40;
thickness = 6;
arm_length = 33;

module holder() {
    translate([0, 0, height / 2]) difference() {
        union(){
            translate([dia / 2 - thickness, -arm_length, - height / 2]) cube(size=[thickness * 2, arm_length, height]);
            rotate([0, 0, -135]) translate([0, 0, - height / 2]) cube(size=[thickness * 2, 35, height]);
            cylinder(d=dia + thickness * 2, h=height, center=true);
        }
        translate([dia / 2, -arm_length, 4]) cylinder(d=thickness * 2, h=height + 8, center=true);
        cylinder(d=dia, h=height + 2, center=true);
        translate([13, -40, 0]) cube(size=[2, 80, height + 2], center=true);

        // fixating screw
        rotate([90, 0, -45]) translate([23, 0, 0]) {
            cylinder(d = 3, h=30, center=true);
            translate([0,0, -14])cylinder(d = 5.1, h=6, center=true);
            translate([0,0, 14])cylinder($fn=6, d = 5.2, h=6, center=true);
        }
    }
}

module bolt_holder() {
    difference() {
        translate([0, 0, (height + 8) / 2]) cylinder(d=thickness * 2, h=height + 8, center=true);
        translate([0, 0, height + 8]) cylinder(d=7.3, h=4 , center=true);
        metric_thread (test=false, internal=true, leadin=2, diameter=6, pitch=1, length=height+6);
    }
}
holder();

translate([dia / 2, -arm_length, 0]) bolt_holder();