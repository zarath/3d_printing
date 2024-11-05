$fn=45;
difference() {
  translate([0, 0, -0.5]) minkowski() {
    cube([10,30,23], center=true);
    cylinder(h = 1, r = 2.5);
  }
  rotate([0, 90, 0]) cylinder(h=17, r=7.5, center=true);
  translate([0, 12, 0]) cylinder(h = 27, r = 2.75, center=true);
  translate([0, -12, 0]) cylinder(h = 27, r = 2.75, center=true);
  translate([0, 0, 11.0]) cube([17,37,23], center=true);
}
