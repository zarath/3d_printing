$fn= 60;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}


module supports (r) {
  rotate_extrude() {
    polygon([[0,0], [0,r], [r,0]]);
  }
}

difference() {
    union(){
        rounded_cylinder(r=20,h=4,n=1);
        cylinder(r1=9.25, r2=10.75, h=20);      
        translate([0,0,3.3]) supports(20);
    }
    translate([0, 0, -5]) cylinder(r=7.8, h=30);
    translate([0, 0, 4]) cylinder(r1=8.6, r2=9.4, h=600);
    for(i = [0: 60: 300]) {
        translate([sin(i)*15,cos(i)*15, -15]) cylinder(r=2.5, h=30);  
    }
}