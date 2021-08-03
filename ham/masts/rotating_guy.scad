$fn= 120;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module hub() {
  difference() {
      union(){
          translate([0, 0, -15]) cylinder(r1=12.75, r2=13.25, h=15);      
          cylinder(r=9.25, h=15);
          translate([0, 0, 4.1]) cylinder(r1=9.45, r2=9.25, h=10.9);      
      }
      translate([0, 0, -1]) cylinder(r=7.8, h=32);
      translate([0, 0, -20]) cylinder(r1=9.4, r2=8.6, h=20);
  
      for(i = [0: 30: 330]) {
        rotate([0, 0, i]) translate([0, 0, 11.1]) cube([1, 30, 20], center=true);
      }
  }
}

module ring() {
  difference() {
      rounded_cylinder(r=20,h=4,n=1);
      translate([0, 0, -1]) cylinder(r=9.35, h=30);
      for(i = [0: 60: 300]) {
          translate([sin(i)*15.75, cos(i)*15.75, -15]) cylinder(r=2.5, h=30);  
      }
  }
}