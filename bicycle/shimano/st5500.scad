// shimano nameplate st-5500
$fn=80;
difference () {
  union () {
    sphere(10);
    rotate([0, 113, 0]) cylinder(22, 10, 11);
  };
  difference () {
    sphere(8.5);
    translate([0, 0, 16]) cube(20, true);
  };
  translate([0, 0, -100]) cube(200, true);
  cylinder($fn=32, 10, 1.6, 1.6);
  translate([0, 0, 6]) cylinder(3, 0, 3);
  translate([0, 0, 9]) cylinder(3, 3, 3);
  translate([32, 0, 0]) cube(22, true);
};
//cylinder 