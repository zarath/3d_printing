$fn=60;

difference () {
  cylinder(d=20, h=60, center=true);
  cylinder(d=15.5, h=4, center=true);
  translate([0,0,-31])cylinder(d=16.5, h=60, center=true);
  translate([0,0,31])cylinder(d=16.5, h=60, center=true);
}