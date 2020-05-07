$fn=64;

difference(){
  cylinder(r=3, h=10, center=true);
  cylinder(r=2.1, h=12, center=true);
  translate([0, -1.6, 0])cube(size=[.4, 4, 12], center=true);

}
translate([0, 1.6, 0])cube(size=[4, 1, 10], center=true);