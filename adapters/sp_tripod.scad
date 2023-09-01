use <threadlib/threadlib.scad>
$fn= 32;

module adapter(){
    difference () {
        minkowski(){
            cube([32, 32, 58]);
            sphere(r=2);
        }
        translate([16,-.1,42])rotate([90, 0, 0])cylinder(r=16.2, h=2.1);
        translate([16, 16, -2.1]) tap("20-UN-1/4", turns=10);
    }
}


adapter();  
