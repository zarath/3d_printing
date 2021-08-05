$fn= 120;
dia = 10.2;
render = 3;

module hub(dia) {
  difference() {
      union() {
        translate([0, 0, -20]) cylinder(d = dia + 4, h = 28);
      }  
      translate([0, 0, -22]) cylinder(d1 = dia +0.2 ,d2 = dia  , h = 20);
      translate([0, 0, 3.5]) cube([7,20,7], center=true);

      
      translate([8.5, 4.75, 8]) cube([7,5,10], center=true);
      translate([8.5, -4.75, 8]) cube([7,5,10], center=true);
      translate([-8.5, 4.75, 8]) cube([7,5,10], center=true);
      translate([-8.5, -4.75, 8]) cube([7,5,10], center=true);
    
      translate([0, 0, 8])
        rotate([270,0, 0])
          linear_extrude(height=20, center=true)
            polygon([[-3.5, 0], [3.5, 0], [3, 1], [-3, 1]]);

      translate([0,2.5,9])cube([20, .5, 10], center=true);
      translate([0,-4.25,9])cube([20, .5, 10], center=true);
      translate([0,4.25,9])cube([20, .5, 10], center=true);
      translate([0,-2.5,9])cube([20, .5, 10], center=true);

      translate([0, 0, 7]) cube([7,5,7], center=true);
  }

}

module snap() {
  difference() {
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
// if (render == 2 || render >= 3) color("red") snap();