$fn= 60;


module rotor(){
    translate([0, 0, -1.5]) cylinder(r=22, h=3, center=true);
    translate([0, 0,  1.5]) cylinder(r=5, h=3, center=true);
}

module cases(){
    translate([8, 0,  0]) cylinder(r=4, h=6, center=true);
    translate([-8, 0,  0]) cylinder(r=4, h=6, center=true);
    cube([15,8,6],center=true);
}

module base(){
  difference(){
    rotor();
    translate([33,0,0])cube([48,48,8], center=true);
    translate([-33,0,0])cube([48,48,8], center=true);
    translate([5,16.5,0]) cylinder(r=.3, h=10, center=true);
    translate([5,8.5,0]) cylinder(r=.3, h=10, center=true);
    translate([-5,-16.5,0]) cylinder(r=.3, h=10, center=true);
    translate([-5,-8.5,0]) cylinder(r=.3, h=10, center=true);
  }
}

difference(){
  union() {
    base();
    cases();
  }
  cube([5.2,5.2,8],center=true);
  translate([8,0,-1]) cylinder(r=1.5, h=6, center=true);
  translate([-8,0,-1]) cylinder(r=1.5, h=6, center=true);
}