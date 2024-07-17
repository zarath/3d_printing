use<roundedcube.scad>

module box(){
    difference() {
        roundedcube([19, 15, 19]);
        translate([1.5, 1.5, 1.5]) cube([16, 12, 20]); 
        translate([-1.0, -1.0, 18]) cube([21, 17, 2]); 
        rotate([270,0,0]){
            translate ([0,0,-1]) {
              $fn=30;
              translate([ 3.5,-5,0]) cylinder(h = 17, r = 1.1);
              translate([ 6.5,-5,0]) cylinder(h = 17, r = 1.1);
              translate([ 9.5,-5,0]) cylinder(h = 17, r = 1.1);
              translate([12.5,-5,0]) cylinder(h = 17, r = 1.1);
              translate([15.5,-5,0]) cylinder(h = 17, r = 1.1);
              translate([ 3.5,-8,0]) cylinder(h = 17, r = 1.1);
              translate([ 6.5,-8,0]) cylinder(h = 17, r = 1.1);
              translate([ 9.5,-8,0]) cylinder(h = 17, r = 1.1);
              translate([12.5,-8,0]) cylinder(h = 17, r = 1.1);
              translate([15.5,-8,0]) cylinder(h = 17, r = 1.1);
              translate([ 3.5,-11,0]) cylinder(h = 17, r = 1.1);
              translate([ 6.5,-11,0]) cylinder(h = 17, r = 1.1);
              translate([ 9.5,-11,0]) cylinder(h = 17, r = 1.1);
              translate([12.5,-11,0]) cylinder(h = 17, r = 1.1);
              translate([15.5,-11,0]) cylinder(h = 17, r = 1.1);
            }
        }
        rotate([180 ,270,0]){
            translate ([0,0,-1]) {
              $fn=30;
              translate([5.0,  -4.5, 0]) cylinder(h = 21, r = 1.1);
              translate([5.0,  -7.5, 0]) cylinder(h = 21, r = 1.1);
              translate([5.0, -10.5, 0]) cylinder(h = 21, r = 1.1);
              translate([8.0,  -4.5, 0]) cylinder(h = 21, r = 1.1);
              translate([8.0,  -7.5, 0]) cylinder(h = 21, r = 1.1);
              translate([8.0, -10.5, 0]) cylinder(h = 21, r = 1.1);
              translate([11.0,  -4.5, 0]) cylinder(h = 21, r = 1.1);
              translate([11.0,  -7.5, 0]) cylinder(h = 21, r = 1.1);
              translate([11.0, -10.5, 0]) cylinder(h = 21, r = 1.1);
            }
        }
    }
}

module cover() {
    difference() {
        roundedcube([19, 15, 8]);
        translate([-1, -1, -3]) cube([21, 17, 8]);
        translate([-1, -1, -1.5]) cube([2.6, 17, 8]);
        translate([17.4, -1, -1.5]) cube([2.6, 17, 8]);
        translate([-1, -1, -1.5]) cube([21, 2.6, 8]);
        translate([-1, 13.4, -1.5]) cube([21, 2.6, 8]);
        translate([1.5, 11.9, 4]) cube([10, 5, 8]);
    }
}

box();
translate([0, 0, 25]) cover();