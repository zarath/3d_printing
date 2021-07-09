// d1 21.5 d2 23 h 30
// angle 35°

r1 = 11.5;
r2 = 10.00;
h = 60;
o = 7.5;
tilt = -35;
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
   cylinder(r=2.5, h=40, center=true);
   translate([0, 0, -10]) cylinder(r1=5, r2=2.5, h=2.5, center=true);
   translate([0, 0, -22.5])cylinder(r=5, h=22.5, center=true);
 }
} 

difference () {
  translate ([-15, -15, -10]) cube([35, 75, 50]);
  holder();
  translate([0, -20, 15])screw();
  translate([0, -20, 30])screw();
}

