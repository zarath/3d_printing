diameter = 16;

$fn=36;
height = 28;
module plate (){
    translate([-5, 0, 0])         cube([10, height, 2]);
    translate([0, 6.5, 0])        cylinder(r=2, h=3);
    translate([0, height-6.5, 0]) cylinder(r=2, h=3);
    translate([-2, 6.5, 0])       cube([4, height-13, 3]);

}

module ring( ){
    difference(){
    cylinder(h= height, d=diameter +4, center=true);
    cylinder(h= height+2, d=diameter, center=true);
    rotate([90, 0, 0]) cylinder(h=diameter +6, d=12, center = true);
    translate([0, -(diameter+6)/2, -6]) cube([diameter, diameter +6, 12]);
    translate([-6, -(diameter+6)/2, 0]) cube([diameter, diameter +6, (height+4 )/2]);
    translate([0, -0.5, -(height/2)-1]) cube([diameter, 1, height+2]);
    }
}
ring();
translate([-(diameter/2), 0, -(height/2)]) rotate([90, 0, 270])plate();

