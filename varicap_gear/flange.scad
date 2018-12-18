
module Feet()
{
rotate([0, 90, 90])
difference (){
  translate([0, 0, 2.5])
    cube([10, 10, 5], center=true);
  cylinder($fn=16, 5, 2, 2);
}
}

module Snap_a ()
{
translate([24, 0, 8.5])
cube([4, 10, 17], center=true);
translate([20, 0, 15.5])
cube([4, 10, 3], center=true);
translate([-24, 0, 8.5])
cube([4, 10, 17], center=true);
translate([-20, 0, 15.5])
cube([4, 10, 3], center=true);
}

module Snap () {
difference() {
Snap_a();
translate([0, 0, 14])
cylinder($fn=120, 3, 21.5, 22);
}
}

module Crown (){
    cylinder($fn=120, 3, 19, 19);
    for (a =[0:6:359])
        translate([19 * sin(a), 19 * cos(a), 0])
            cylinder($fn=10, 3, .9, .9);
}

module Base ()
{
translate([0, 5.5, 5]) cube([70, 59, 10], center=true);

translate([0, 0, 10]) cylinder($fn=120, 10, 24, 24);
translate([0, 0, 10]) Snap();
translate([0,0, 20]) Crown();

translate([30, 30, 15])
  Feet();
translate([-30, 30, 15])
  Feet();
}

module Edge_Rounding () {
   difference() {
   translate([0, 0,  5]) cube([20, 20, 10], center=true);
   translate([10, 10, 0]) cylinder($fn=32, 10, 10, 10);
   translate([-10, 10, 0]) cylinder($fn=32, 10, 10, 10);
   translate([-10, -10, 0]) cylinder($fn=32, 10, 10, 10);
   translate([10, -10, 0]) cylinder($fn=32, 10, 10, 10);
   }
}

difference () {
    Base();
    cylinder($fn=120, 23, 16, 16);
    translate([31, 4, 0])
       cylinder($fn=16, 10, 2, 2);
    translate([-31, 4, 0])
       cylinder($fn=16, 10, 2, 2);
    translate([0, 0, 15])
      rotate ([90, 0, 0])
        cylinder($fn=32, 24, 5, 5);
    translate([0, 29.5, 5])
      cube([50, 11, 10], center=true);
    translate([35, -24, 0]) Edge_Rounding();
    translate([-35, -24, 0]) Edge_Rounding();
}