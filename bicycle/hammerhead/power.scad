$fn = 60;
difference(){
    union(){
        cylinder(d=34, h=22, center=true);
        translate([0, 27, 0]) cube([28,53,22], center=true);
    }
    translate([0, 3, 0]){
        translate([10, 0, 0])
        cylinder(d=3.2, h=24, center=true);
        translate([10, 0, 2])
        cylinder(d=5.8, h=24, center=true);
        translate([-10, 0, 0])
        cylinder(d=3.2, h=24, center=true);
        translate([-10, 0, 2])
        cylinder(d=5.8, h=24, center=true);
    }
    translate([0, -3, 0]){
        translate([11.2, 0, 0])
        cylinder(d=3.2, h=24, center=true);
        translate([11.2, 0, -11])
        cylinder($fn=6, d=6, h=4, center=true);     
        translate([-11.2, 0, 0])
        cylinder(d=3.2, h=24, center=true);
        translate([-11.2, 0, -11])
        cylinder($fn=6, d=6, h=4, center=true);     
        translate([11.2, 42, 0])
        cylinder(d=3.2, h=24, center=true);
        translate([11.2, 42, -11])
        rotate([0,0,90])
        cylinder($fn=6, d=6, h=4, center=true);
        translate([-11.2, 42, 0])
        cylinder(d=3.2, h=24, center=true);
        translate([-11.2, 42, -11])
        rotate([0,0,90])
        cylinder($fn=6, d=6, h=4, center=true);
    }
    translate([0, 19, 0]){
        rotate([90, 0, 0]) cylinder(d=18.2, h=65.2, center=true);
        translate([0, 0, 9.1]) cube([18.2, 65.2, 18.2], center=true);
    }
   translate([0, 0, 0]) cube([36, 74, 2]);

 
}
