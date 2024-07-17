use <threadlib/threadlib.scad>
$fn= 120;

// module rounded_cylinder(r,h,n) {
//   rotate_extrude(convexity=1) {
//     offset(r=n) offset(delta=-n) square([r,h]);
//     square([n,h]);
//   }
// }

// difference() {
//   union () {
//     rounded_cylinder(38.0, 4, 1);
//     cylinder(d1=71.5, d2=70.8, h = 19);
//   }
//   translate([0, 0, -1]) cylinder(d1=47.2, d2=47.4, h=26);
//   // translate([0, 0, 4]) cylinder(d1=62.8, h=30);
//   // translate([0, 0uu, 38]) cylinder(d1=58, d2=60, h=4);

//   // for(i = [0: 30: 330]) {
//   //     translate([sin(i)*42.0,cos(i)*42.0, -15]) cylinder(r=3, h=30);  
//   // }

// }

// difference() {
//   cylinder(d=71, h=30);
//   translate([0,0, -1])
//   cylinder(d1=50, d2=58, h=32);
// }

difference (){
  union (){
    cylinder(r1=15, r2=10, h=55);
    translate([0, 0, 55]) sphere(r=10);
  }
  translate([0, 0, -1]){
    cylinder(r=6, h=8);
    translate([0, 0, 8]) cylinder(r1=6, r2=2, h=8);
    translate([0, 0, 26]) cylinder(r=3.5, h=34);
    translate([0, 0, 60]) sphere(r=3.5);
    translate([0, 0, 14]) tap("M6", turns=12);
  }
}