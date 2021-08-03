// d1 21.5 d2 23 h 30
// angle 35°

r1 = 11.5;
r2 = 10.00;
h = 60;
o = 7.5;
tilt = -15;
// tilt = 0;

$fn = 60;

module holder () {
  rotate(tilt, [1, 0, 0]) {  
    rotate_extrude()
      polygon(points=[[0,0],[r1,0],[r2,h],[0,h]]);
    for ( i = [0: 23] ){
      rotate( i * 15, [0, 0, 1]) {
        rotate_extrude(angle=12) 
          polygon(points=[[0,0],[r1+0.5,0],[r2+0.5,h],[0,h]]); 
        } 
    }
    translate([-o, 0, 0]) cube([2 * o, r1 + 10, h]);
    translate([-20, -15, -40]) cube([40, 40, 40]);
    translate([-20, 13 , -10]) cube([40, 60, h + 40]);
  }
}

module screw () {
 rotate(90, [1, 0, 0]) {
   cylinder(r=2.5, h=72, center=true);
   translate([0, 0, -33.5]) cylinder(r1=5, r2=2.5, h=2.5, center=true);
   translate([0, 0, -65])cylinder(r=5, h=60, center=true);
 }
} 

difference () {
  translate ([-15, -65, -5]) cube([30, 95, 50]);
  holder();
  translate ([-25, -75, 30]) cube([50, 115, 20]);
  translate([0, -85, 5])screw();
  translate([0, -85, 20])screw();
}

