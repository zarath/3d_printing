$fn=30;
bolt_delta_x = 44.45;
bolt_delta_y = 27.94;
bolt_diameter = 7.0;


module  usb_hole(){
    translate([0.0, 0.0, -1.0]) 
    minkowski() {
        cube([11.0, 6.0, 4.0], center = true);
        cylinder(h = 2.0, r = 0.5);
    }
    
}
module case() {
    difference() {
        union() {
            translate([-0.0, 0.0, 13.0]) minkowski() {
                cube([52.0, 36.0, 26.0], center=true);
                cylinder(h = 4.0, r = 2.0);
            };
        }
        translate([-26.5, -18.5, 2.0]) cube([53.0, 37.0, 30.0]);

        translate([-26.0, 0.0, 30.0 - 11.0]) rotate([90.0, 0.0, 90.0]) usb_hole(); 

        translate([bolt_delta_x / 2.0, bolt_delta_y / 2.0, -1]) cylinder($fn=6, h = 4.0, d = 6.0);
        translate([-bolt_delta_x / 2.0, bolt_delta_y / 2.0, -1]) cylinder($fn=6, h = 4.0, d = 6.0);
        translate([bolt_delta_x / 2.0, -bolt_delta_y / 2.0, -1]) cylinder($fn=6, h = 4.0, d = 6.0);
        translate([-bolt_delta_x / 2.0, -bolt_delta_y / 2.0, -1]) cylinder($fn=6, h = 4.0, d = 6.0);
        
        translate([0.0, 0.0, -1.0]) cylinder(h = 4.0, d = 4.0);
    }
    difference() {
        union() {
            translate([bolt_delta_x / 2.0, bolt_delta_y / 2.0, 2.0]) cylinder(h = 21.5, d = bolt_diameter);
            translate([-bolt_delta_x / 2.0, bolt_delta_y / 2.0, 2.0]) cylinder(h = 21.5, d = bolt_diameter);
            translate([bolt_delta_x / 2.0, -bolt_delta_y / 2.0, 2.0]) cylinder(h = 21.5, d = bolt_diameter);
            translate([-bolt_delta_x / 2.0, -bolt_delta_y / 2.0, 2.0]) cylinder(h = 21.5, d = bolt_diameter);
        };
        translate([bolt_delta_x / 2.0, bolt_delta_y / 2.0, 1.0]) cylinder(h = 23.0, d = 2.8);
        translate([-bolt_delta_x / 2.0, bolt_delta_y / 2.0, 1.0]) cylinder(h = 23.0, d = 2.8);
        translate([bolt_delta_x / 2.0, -bolt_delta_y / 2.0, 1.0]) cylinder(h = 23.0, d = 2.8);
        translate([-bolt_delta_x / 2.0, -bolt_delta_y / 2.0, 1.0]) cylinder(h = 23.0, d = 2.8);
    }
}
module baseplate()
{
    difference() {
        union() {
            translate([-26.0, -18.0, 0]) minkowski() {
                cube([52.0, 36.0, 1.0]);
                cylinder(h = 1.0, r =2.0);
            };
            translate([bolt_delta_x / 2.0, bolt_delta_y / 2.0, 0]) cylinder(h = 8.5, d = bolt_diameter);
            translate([-bolt_delta_x / 2.0, bolt_delta_y / 2.0, 0]) cylinder(h = 8.5, d = bolt_diameter);
            translate([bolt_delta_x / 2.0, -bolt_delta_y / 2.0, 0]) cylinder(h = 8.5, d = bolt_diameter);
            translate([-bolt_delta_x / 2.0, -bolt_delta_y / 2.0, 0]) cylinder(h = 8.5, d = bolt_diameter);
        }
        translate([26.0 - 8.8, 0, -1]) cylinder(h = 9.5, d = 7.6);
        translate([26.0 - 50.0 + 8.2, -6.0, -1.0]) cube([25.0, 12.0, 4.0]);
        translate([bolt_delta_x / 2, bolt_delta_y / 2, -1]) cylinder(h = 11.5, d = 2.8);
        translate([-bolt_delta_x / 2, bolt_delta_y / 2, -1]) cylinder(h = 11.5, d = 2.8);
        translate([bolt_delta_x / 2, -bolt_delta_y / 2, -1]) cylinder(h = 11.5, d = 2.8);
        translate([-bolt_delta_x / 2, -bolt_delta_y / 2, -1]) cylinder(h = 11.5, d =2.8);
        translate([bolt_delta_x / 2, bolt_delta_y / 2, -1]) cylinder(h = 3.0, d = 5.0);
        translate([-bolt_delta_x / 2, bolt_delta_y / 2, -1]) cylinder(h = 3.0, d = 5.0);
        translate([bolt_delta_x / 2, -bolt_delta_y / 2, -1]) cylinder(h = 3.0, d = 5.0);
        translate([-bolt_delta_x / 2, -bolt_delta_y / 2, -1]) cylinder(h = 3.0, d = 5.0);
    }
}

// baseplate();
case();
// translate([6,0,3]) usb_hole();