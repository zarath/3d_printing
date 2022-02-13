$fn= 60;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module plate () {
  difference() {
    union() {
      translate([0, 0, 0]) cube([46, 11, 2]);
      translate([1, 1, 0]) cube([22, 9, 3]);
      translate([28, 0, 0]) cube([18, 31, 2]);
      translate([29, 16, 0]) cube([16, 14, 3]);
    }
    translate([12, 5.5, 3]) {
      cube([6.2, 3.2, 2], center=true);
      cube([6.4, 1.2, 4], center=true);
      cylinder(r=1, h=8, center= true);
      translate([0, 0, -3]) cylinder(r=2, h=2, center= true);
    }
    translate([37, 23, 3]) {
      cube([6.2, 3.2, 2], center=true);
      cube([6.4, 1.2, 4], center=true);
      cylinder(r=1, h=8, center= true);
      translate([0, 0, -3]) cylinder(r=2, h=2, center= true);
    }
    translate([12, 4.5, -1]) cube([25,2,2]);
    translate([36, 4.5, -1]) cube([2,18.5,2]);
    translate([36.5, 6, 0]) cylinder(r=2, h=2, center= true);
  }
}

plate();

rotate([180, 0, 0])
translate([0, 15, -24]) difference() {    
  cube([24,11,24]);
  translate([1,1,-1])  cube([22,9,24]);

  translate([1,-1,13])  cube([3,4,8]);
  translate([9,-1,13])  cube([3,4,8]);
  translate([17,-1,13])  cube([3,4,8]);

  translate([2,9,8])  cube([5,4,8]);
  translate([13,9,8])  cube([5,4,8]);

}
rotate([180, 0, 0])
translate([28, 36, -24]) difference() {
  cube([18,16,24]);
  translate([1,1,-1]) cube([16,14,24]);

  translate([4, 13, 13])  cube([5,4,8]);
  translate([12, 13, 13])  cube([5,4,8]);


  translate([-1,5,8])  cube([4,5,8]);

}

