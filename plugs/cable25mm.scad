$fn= 60;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module plug () {
   translate([0,0,6])rounded_cylinder(r=22,h=14,n=1);
    // translate([0,0,6]) cylinder(r=15, h=2, center=true);
    // cylinder(r=12.25, h=12, center=true);
}

difference(){
    rounded_cylinder(r=22,h=14,n=1);
    cylinder(r=20.25, h=24, center=true);
    cylinder(r=4, h=30, center=true);
 
    // translate([-3.5,0,0])cylinder(r=3.25, h=18.2, center=true);
    // translate([-3.5,-3.5,-7])cube([20,7,18.2]);
}