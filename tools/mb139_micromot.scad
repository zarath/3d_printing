use<threads.scad>

$fn=120;

height = 9;
dia = 43;
thread  = 17.8;
pitch = 1.5;
dia_conrad = 39;

test = false;

// difference() {
//     cylinder(d=dia, h=height);
//     metric_thread (test=false, internal=true, diameter=thread, pitch=pitch, length=height);
    
// }

// difference() {
//     cylinder(d=dia, h=20);
//     metric_thread (test=true, internal=true, diameter=thread, pitch=pitch, length=height);
//     translate([0, 0, height]) cylinder(d1 = 22, d2 = 23, h=2);
//     translate([0, 0, height+2]) cylinder(d1 = 36, d2 = 37, h=2);
//     translate([0, 0, height+4]) cylinder(d = 40, h=7);
//     translate([0, 0, 18.5])   rotate([90, 0, 0]) cylinder(d= 14, h=45);
// }

// difference() {
//     cylinder(d=dia_conrad, h=25);
//     metric_thread (test=test, internal=true, diameter=thread, pitch=pitch, length=height);
//     translate([0, 0, height]) cylinder(d1 = 22, d2 = 23, h=2);
//     translate([0, 0, height+2]) cylinder(d1 = 36, d2 = 37, h=2);
//     translate([0, 0, height+4]) cylinder(d =37 , h=12);
//     translate([0, 0, 18.5]) rotate([90, 0, 0]) cylinder(d= 14, h=45);
//     translate([0, -22.5, 25.5]) cube([14, 45, 14], center=true);
// };

difference() {
    cylinder(d=dia_conrad, h=25);
    cylinder(d = 34.8, h=7);
    translate([0, 0, 7]) cylinder(d1 = 35.2, d2 = 34.5, h=18);
    translate([0, -dia_conrad / 2, 12.5]) cube([2, 20, 25], center=true);
};


