$fn= 60;

difference(){
  union(){
    cylinder(h=60, d=35);
    translate([0, 0, 7]) cylinder(h=60, d1=39, d2=41);
    translate([0, 0, 7]) cylinder(h=10, d1=50, d2=39);

  }
  translate([0, 0, -1]) cylinder(h=70, d=29);
  translate([0, 0, 7]) cylinder(h=60.1, d1=31, d2=33);
}
