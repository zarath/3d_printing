$fn= 120;
R_CORE = 28.0;
H_CORE= 20.0;
module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module plug () {
    // translate([0,0,6])rounded_cylinder(r=15,h=2.1,n=1);
    translate([0,0,H_CORE / 2]) cylinder(r=R_CORE + 2.75, h=2, center=true);
    cylinder(r=R_CORE, h=H_CORE, center=true);
}

difference(){
    plug();
    cylinder(r=R_CORE -2, h=H_CORE + 0.1, center=true);
    translate([-3.5,0,0])cylinder(r=3.25, h=H_CORE * 2.0, center=true);
    translate([-3.5,-3.5,- H_CORE ])cube([40,7,H_CORE * 2.0]);
}