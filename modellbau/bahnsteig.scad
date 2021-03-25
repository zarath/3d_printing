WIDTH = 22;
LENGTH = 100; 
HEIGHT = 6.5;
difference() {
    cube([WIDTH, LENGTH, HEIGHT]);
    translate([20, -1, 2]) cube([WIDTH, LENGTH + 2, HEIGHT]);
    translate([0, LENGTH - 13, -1]) rotate([0,0,30]) cube([WIDTH + 10, LENGTH, HEIGHT+2]);
    translate([-WIDTH +2 , -1, 1.1]) cube([WIDTH, 11, HEIGHT]);
    translate([-WIDTH +4 , -1, 2.2]) cube([WIDTH, 11, HEIGHT]);
    translate([-WIDTH +6 , -1, 3.3]) cube([WIDTH, 11, HEIGHT]);
    translate([-WIDTH +8 , -1, 4.4]) cube([WIDTH, 11, HEIGHT]);
    translate([-WIDTH +10 , -1, 5.5]) cube([WIDTH, 11, HEIGHT]);

    translate([17, -1, 6.4]) cube([0.1, LENGTH + 2, HEIGHT]);
    for (i=[0:8:LENGTH]){
        translate([17, i-3, 6.4]) cube([4, 0.1, HEIGHT]);
    }
}