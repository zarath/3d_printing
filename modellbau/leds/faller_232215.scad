$fn= 60;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module plate () {
   difference(){
       union(){
        translate([0, 0, -2]) rounded_cylinder(r=7,h=4,n=1);
        translate([0, 0, -3]) rounded_cylinder(r=5,h=6,n=1);
       };
       translate([0, 0, -4]) cylinder(r=8, h=4);
       translate([0, 0, 3]) cube([3.2, 6.2, 2], center=true);
       translate([0, 0, 3]) cube([1.2, 6.4, 4], center=true);
       
   };
}

difference(){
    plate();
    translate([0, 0, -1]) cylinder(r=1, h=5);
    
    // translate([-3.5,0,0])cylinder(r=3.25, h=18.2, center=true);
    // translate([-3.5,-3.5,-7])cube([20,7,18.2]);
}