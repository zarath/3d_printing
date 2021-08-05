$fn= 120;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

difference() {
  union () {
    rounded_cylinder(50, 4, 1);
    cylinder(d1=74, d2=62, h = 24);
    cylinder(d1=62, d2=62, h = 40);
  }
  translate([0, 0, -1]) cylinder(d1=52, d2=58, h=26);
  translate([0, 0, 24]) cylinder(d=58, h=30);
  translate([0, 0, 38]) cylinder(d1=58, d2=60, h=4);

  for(i = [0: 40: 320]) {
      translate([sin(i)*42.5,cos(i)*42.5, -15]) cylinder(r=3, h=30);  
  }

}