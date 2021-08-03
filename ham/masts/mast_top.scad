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
        rounded_cylinder(r=9,h=4,n=1);
        cylinder(r1=3.5, r2=4.0, h=10);      
        // translate([0,0,3.3]) supports(20);
    }
    translate([0, 0, 2]) cylinder(r1=1.7, r2=1.9, h=10);
    for(i = [0: 90: 300]) {
        translate([sin(i)*5.5,cos(i)*5.5, -15]) cylinder(r=1.75, h=30);  
    }
}