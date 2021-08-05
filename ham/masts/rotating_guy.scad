$fn= 120;
dia = 22.6;
render = 3;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}

module hub(dia) {
  difference() {
      union(){
          translate([0, 0, -15]) cylinder(d1 = dia + 8, d2 = dia + 12, h = 15);      
          cylinder(d = dia + 4, h = 5);
          translate([0, 0, 4.1]) cylinder(d1= dia + 4.6, d2 = dia + 2, h = 10.9);      
      }
      translate([0, 0, -2]) cylinder(d = dia - 2, h = 18);
      translate([0, 0, -16]) cylinder(d1 = dia + 0.2, d2 = dia, h = 15);
      translate([0, 0, 8]) cylinder(d = dia * 2, h = 15);

      for(i = [0: 30: 330]) {
        rotate([0, 0, i]) translate([0, 0, 11.1]) cube([1, dia * 2, 20], center = true);
      }
  }
}

module ring(dia) {
  difference() {
      rounded_cylinder(r = (dia / 2) + 12.75, h = 4, n = 1.5);
      translate([0, 0, -1]) cylinder(d = dia + 4.2, h = 6);
      for(i = [0: 60: 300]) {
          translate([sin(i) * ((dia / 2) + 8.5), cos(i) * ((dia / 2) + 8.5), -15]) cylinder(r=2.5, h=30);  
      }
      for(i = [30: 60: 330]) {
          translate([sin(i) * ((dia / 2) + 8.5), cos(i) * ((dia / 2) + 8.5), -15]) cylinder(r=1.5, h=30);  
      }

  }
}

if (render == 1 || render >= 3) hub(dia);
if (render == 2 || render >= 3) color("red") ring(dia);