$fn= 60;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module plug () {
  difference() {
      rounded_cylinder(r=8.3, h=5, n=1); 
      cylinder(r=9, h=4, center=true);
  }
  translate([0,0,-6]) cylinder(r=4.1, h=16, center=true);
  translate([0,0,-1]) cylinder(r=6.65, h=6, center=true);
  for ( i = [0: 15] ) {
    rotate([0, 0, i * 360 / 16]) {
      translate([0, 4.25, -6]) cylinder(r1=0.3, r2=0.5, h=16, center=true);
      translate([0, 6.35, -1]) cylinder(r1=0.4, r2=0.6, h=6, center=true);
    }
  }
}

difference(){
  plug();
  translate([0, 0, -7]) cylinder(r=3.0, h=18, center=true);
}