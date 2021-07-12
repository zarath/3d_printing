$fn=60;
callsign="";

translate ([0, 0, 4]) rotate([-90, 0, 0]){
    rotate([0, 0, -30]) {
        difference(){
            translate([-2, 0, 0]) rotate_extrude(angle=30) square(size=[34, 60]);
            translate([-4, -2, -2])cube([4, 4, 64]);
            translate([25, 0, 11.5]) rotate([90,0,0]) cylinder(r=3.5, h=1.6, center=true);
            translate([25, 0, 49.5]) rotate([90,0,0]) cylinder(r=3.5, h=1.6, center=true);
            rotate([0, 270, 200]) translate([30, 0, 30.5])  
                linear_extrude(2) text(callsign, valign="center", halign="center");

        }
        translate([25, 0, 11.5]) rotate([90,0,0]) cylinder(r=2.25, h=8, center=true);
        translate([25, 0, 49.5]) rotate([90,0,0]) cylinder(r=2.25, h=8, center=true);
        translate([5, -1, 30]) rotate([90,0,0]) cylinder(r=2.30, h=6, center=true);
        // rotate([0, 270, 200]) translate([30, 0, 30.5])  
        //   linear_extrude(2) text(callsign, valign="center", halign="center");

    }
    cube([32.3, 4, 60]);
}