width = 21.001;
height = 51.001;
thickness = 1.501;

bolt_delta_x = 11.401;
bolt_delta_y = 47.001;
bolt_diameter = 1.801;
bolt_screw = 0.501;

snap_delta = 2.401;

module snap(latch=true)
{
    cube([width, 2.0, thickness]);
    translate([snap_delta, 0.2, 0]) {
        cube([4, 1.4, thickness + 2.5 + 2.0]);
        translate([0, 0, thickness + 3.3])
            rotate([0, 90, 0])
                cylinder($fn=15, d=0.8, h=4);
    };
    translate([width - snap_delta - 4.0, 0.2, 0]) {
        cube([4, 1.4, thickness + 2.5 + 2.0]);
        translate([0, 0, thickness + 3.3])
            rotate([0, 90, 0])
                cylinder($fn=15, d=0.8, h=4);
    }
    if (latch) {
        translate([width / 2 - 5.0, 0, 0])
            difference() {
                cube([10.0, 10.0, thickness]);
                translate([5.0, 5.0, -1]) cylinder($fn=15, d=2.8, h=thickness + 2);
            }
    }
}

module bolt()
{
    difference(){
        union(){
            cylinder($fn=30, d=bolt_diameter + 2.0, h=thickness + 2.5);
            cylinder($fn=30, d=bolt_diameter , h=thickness + 2.5 + 1.0);
        }
        translate([0.0, 0.0, -1.0])
            cylinder($fn=30, d=bolt_screw, h=thickness + 2.5 + 1.0 + 2.0);
    }
}

module bolting()
{
    translate([(width - bolt_delta_x) / 2.0,
               (height - bolt_delta_y) / 2.0, 0]) bolt();
    translate([(width + bolt_delta_x) / 2.0,
               (height - bolt_delta_y) / 2.0, 0]) bolt();
    translate([(width - bolt_delta_x) / 2.0,
               (height + bolt_delta_y) / 2.0, 0]) bolt();
    translate([(width + bolt_delta_x) / 2.0,
               (height + bolt_delta_y) / 2.0, 0]) bolt();
}

module baseplate()
{
    cube([width, height, thickness]);
    bolting();
}

baseplate();
mirror([0,1,0]) snap();
translate([0.0, height, 0.0]) snap();
