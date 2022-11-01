use <threadlib/threadlib.scad>
$fn= 16;

module edge(r, h, dir){
    rotate([0, 0, dir])
    difference() {
     cube([r, r, h]);
     translate([0, 0, -1]) cylinder(r=r, h=h+2);
    }
}

module pi_rods(d, h){
    translate([3.5, 3.5, 0.0]) cylinder(d=d, h=h);
    translate([52.5, 3.5, 0.0]) cylinder(d=d, h=h);
    translate([3.5, 61.5, 0.0]) cylinder(d=d, h=h);
    translate([52.5, 61.5, 0.0]) cylinder(d=d, h=h);
}

module front_plate(){
    // it is 38.0 x 84.5
    difference() {
        cube([38.0, 84.5, 25.0]);
        translate([6, 4, 3])cube([26.0, 26.0, 25.0]);
        translate([3.5, 4, 12])cube([31.0, 26.0, 25.0]);
        translate([3.5, 12.5, 3])cube([10.0, 9.0, 25.0]);

        // 5mm behind 16mm-2.5 23.8mm-2.5
        translate([3.5, 31, 6])cube([25.0, 25.5, 25.0]);
        translate([4.5, 32.5, 4])cube([30.0, 22.5, 25.0]);
        translate([4.5, 43.75 - 5.0, 2])cube([30.0, 10, 25.0]);
        translate([12.95, 43.75, -1])cylinder(d1=12, d2=4, h=4);
        translate([12.95 - 6.75, 43.75 - 10.65, -1])cylinder(d=2.7, h=27.0);
        translate([12.95 - 6.75, 43.75 - 10.65, -1])cylinder(d=5.0, h=3.0);
        translate([12.95 - 6.75, 43.75 - 10.65, 6])cylinder($fn=6, r=3.0, h=27.0);
        translate([12.95 + 6.75, 43.75 - 10.65, -1])cylinder(d=2.7, h=27.0);
        translate([12.95 + 6.75, 43.75 - 10.65, -1])cylinder(d=5.0, h=3.0);
        translate([12.95 + 6.75, 43.75 - 10.65, 6])cylinder($fn=6, r=3.0, h=27.0);
        translate([12.95 - 6.75, 43.75 + 10.65, -1])cylinder(d=2.7, h=27.0);
        translate([12.95 - 6.75, 43.75 + 10.65, -1])cylinder(d=5.0, h=3.0);
        translate([12.95 - 6.75, 43.75 + 10.65, 6])cylinder($fn=6, r=3.0, h=27.0);
        translate([12.95 + 6.75, 43.75 + 10.65, -1])cylinder(d=2.7, h=27.0);
        translate([12.95 + 6.75, 43.75 + 10.65, -1])cylinder(d=5.0, h=3.0);
        translate([12.95 + 6.75, 43.75 + 10.65, 6])cylinder($fn=6, r=3.0, h=27.0);


        // 16 behind
        translate([2.5, 57.5, 16])cube([20.0, 23.0, 25.0]);
        translate([4.5, 57.5, 13])cube([16.0, 23.0, 25.0]);
        translate([12.5, 57.7 + 5.8, -1])cylinder($fn=32, r=4.9, h=27.0);
        translate([12.5, 57.7 + 5.8, 3])cylinder($fn=32, r=5.3, h=27.0);
        translate([12.5 - 6.8, 57.7 + 2.7, -1])cylinder(d=2.7, h=27.0);
        translate([12.5 + 6.8, 57.7 + 2.7, -1])cylinder(d=2.7, h=27.0);
        translate([12.5 - 6.8, 57.7 + 2.7, -1])cylinder(d=5.0, h=3.0);
        translate([12.5 + 6.8, 57.7 + 2.7, -1])cylinder(d=5.0, h=3.0);

        // 17 behind
        translate([3, 3, 17])cube([32.0, 78.5, 25.0]);
        translate([3, 3, -1])cylinder(d=2.7, h=27.0);
        translate([3, 3, -1])cylinder(d=5, h=3.0);
        translate([35, 3, -1])cylinder(d=2.7, h=27.0);
        translate([35, 3, -1])cylinder(d=5, h=3.0);
        translate([3, 81.5, -1])cylinder(d=2.7, h=27.0);
        translate([3, 81.5, -1])cylinder(d=5, h=3.0);
        translate([35, 81.5, -1])cylinder(d=2.7, h=27.0);
        translate([35, 81.5, -1])cylinder(d=5, h=3.0);

        translate([3, 3, -1])edge(3.0, 27, 180);
        translate([35, 3, -1])edge(3.0, 27, 270);
        translate([3, 81.5, -1])edge(3.0, 27, 90);
        translate([35, 81.5 , -1])edge(3.0, 27, 0);

    }
}

module mounting_plate(){
    difference() {
        union() {
          cube([76.0, 100.0, 3.0]);
          translate([15, 5, 0]){
            translate([3.1, 3.1, 0]) cube([38.0-3.1 *2 , 84.5-3.1* 2, 5.0]);
          }
          translate([56, 7.25, 0]) cube([20, 80, 10]);
        }
        translate([-5, -20, -1]) cube([15, 50, 5]);

        translate([15, 5, 0]){
            translate([5.1, 5.1, -1]) cube([38.0-5.1 *2 , 22.1, 25.0]);
            translate([5.1, 5.1 + 26.1, -1]) cube([38.0-5.1 *2 , 22.1, 25.0]);
            translate([5.1, 5.1 + 26.1 * 2, -1]) cube([38.0-5.1 *2 , 22.1, 25.0]);
            translate([3, 3, -1])cylinder(d=2.7, h=27.0);
            translate([3, 3, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
            translate([35, 3, -1])cylinder(d=2.7, h=27.0);
            translate([35, 3, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
            translate([3, 81.5, -1])cylinder(d=2.7, h=27.0);
            translate([3, 81.5, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
            translate([35, 81.5, -1])cylinder(d=2.7, h=27.0);
            translate([35, 81.5, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
        }

        translate([66, 12, 11.3])rotate([-90,0,0])cylinder($fn=32,d=18.6,h=70);
        translate([66, 13, -1]) cylinder(d=5,h=27);
        translate([66, 82, -1]) cylinder(d=5,h=27);
        translate([56+2, 7, 5])rotate([0,90,0]) cylinder(d=2,h=16);
        translate([56+2, 87, 5])rotate([0,90,0]) cylinder(d=2,h=16);

        translate([15, 30, 0]){
            translate([0, 0, -1]) pi_rods(2.7, 5.0);
            translate([0, 0, 1]) pi_rods(5.0, 3.0);
        }

        translate([0, 0, -1]) case_rods(2.7, 5.0);
        translate([0, 0, 1]) case_rods(5, 5.0);
    }
}

module case_rods(d, h){
        translate([3,33,0])cylinder(d=d, h=h);
        translate([73,3,0])cylinder(d=d, h=h);
        translate([13,3,0])cylinder(d=d, h=h);
        translate([73,97,0])cylinder(d=d, h=h);
        translate([3,97,0])cylinder(d=d, h=h);
}

module main_case(){
    difference() {
        union() {
            difference() {
                cube([80.0, 104.0, 2.0]);
                translate([-5, -20, -1]) cube([15, 50, 5]);
            }
            translate([10,0,0])cube([70, 3, 40]);
            translate([0,101,0])cube([80, 3, 40]);
            translate([10,0,0])cube([3, 33, 40]);
            translate([0,30,0])cube([3, 74, 40]);
            translate([0,30,0])cube([13, 3, 40]);
            translate([77,0,0])cube([3, 104, 40]);
            translate([2,2,0])case_rods(7,38);
        }
        translate([2,2,19])case_rods(2.7,22);
        // mounting rods
        translate([2,2,27.5]){
            case_rods(6.2, 2.5);
            translate([0.4, 27, 0])cube([5.2, 8.0, 2.5]);
            translate([10.4, -3, 0])cube([5.2, 8.0, 2.5]);
            translate([70.4, -3, 0])cube([5.2, 8.0, 2.5]);
            translate([0.4, 95, 0])cube([5.2, 8.0, 2.5]);
            translate([70.4, 95, 0])cube([5.2, 8.0, 2.5]);
   
        }
        translate([1.8,1.8,37]) difference() {
            cube([80.0 - 3.6, 104 - 3.6, 4.0]);
            translate([-5, -20, -1]) cube([15, 50, 5]);
        }

        translate([3, 33, -1]) edge(3, 42, 180);
        translate([13, 3, -1]) edge(3, 42, 180);
        translate([77, 3, -1]) edge(3, 42, 270);
        translate([3, 101, -1]) edge(3, 42, 90);
        translate([77,101, -1]) edge(3, 42, 0);
    }

}

module gps(){
    difference() {
        cube([8, 41, 37]);
        translate([-1, 4, 11]) cube([10, 34, 27]);
        translate([5, 2, 11]) cube([2, 38, 27]);

    }
}

module display() {
    CubePoints = [
        [  0,  0,  0 ],   //0
        [ 56,  0,  0 ],   //1
        [ 56,  80,  0 ],  //2
        [  0,  80,  0 ],  //3
        [  2,  2,  2 ],   //4
        [  54,  2,  2 ],  //5
        [ 54,  78,  2 ],  //6
        [  2,  78,  2 ],  //7
    ];
    CubeFaces = [
        [0,1,2,3],  // bottom
        [4,5,1,0],  // front
        [7,6,5,4],  // top
        [5,6,2,1],  // right
        [6,7,3,2],  // back
        [7,4,0,3],  // left
    ];
    polyhedron(CubePoints, CubeFaces);
}

module venthole() {
    rotate([0, 90, 0]) cylinder(d=3.5, h=26, center=true);
}
module venthole2() {
    rotate([90, 0, 0]) cylinder(d=3.5, h=6, center=true);
}


module case(){
    difference () {
        union(){
            main_case();
            translate([75, 20, 20]) rotate([0, 90, 0]) cylinder(d1=7.5, d2=17, h=5, center=true);
            translate([3,55,0]) gps();
            // #translate([17, 13, 0]) cube([56, 85, 5]);
        }
        translate([17, 17, 0]){
            display();
        }

        translate([17, 1.5, 0]){
            translate([10.25, 0, 19.5]) cube([16, 5, 15], center=true);
            translate([10.25, 0, 27]) cube([6, 5, 5], center=true);

            translate([29, 0, 17]) cube([16, 5, 16], center=true);
            translate([47, 0, 17]) cube([16, 5, 16], center=true);
        }

        translate([0, 97, 0]){
            translate([80, -11.2, 23]) cube([10, 14, 10], center=true);
            translate([80, -26.0, 23]) cube([10, 12.6, 10], center=true);
            translate([80, -39.5, 23]) cube([10, 12.6, 10], center=true);
            translate([80, -54.5, 22]) rotate([0, 90, 0]) cylinder(d=11, h=26, center=true);
        }
        for (y = [40:5:55], z = [5:5:35]) {
            translate([0, y, z]) venthole();
        }
        for (y = [10:5:25], z = [5:5:35]) {
            translate([15, y, z]) venthole();
        }
        for (y = [10:5:95], z = [5:5:10]) {
            translate([80, y, z]) venthole();
        }
        for (y = [10:5:95]) {
            translate([80, y, 35]) venthole();
        }
        for (y = [10:5:35]) {
            translate([80, y, 30]) venthole();
        }

        for (x = [10:5:70], z = [5:5:25]) {
            translate([x, 102.5, z]) venthole2();
        }

        for (x = [10:5:55], z = [30:5:35]) {
            translate([x, 102.5, z]) venthole2();
        }

        for (x = [20:5:70]) {
            translate([x, 0, 35]) venthole2();
        }
        for (x = [40:5:70]) {
            translate([x, 0, 30]) venthole2();
        }
        for (x = [20:5:70]) {
            translate([x, 0, 5]) venthole2();
        }

        translate([73, 20, 20]) rotate([0, 90, 0]) tap("20-UN-1/4", turns=6);
        translate([65, 102.5, 32.5]) cube([10,10,5], center=true);
    }
}

module battery_lid() {
    difference() {
        cube([24, 84, 20.6]);
        translate([3, 3, -1]) edge(3, 22, 180);
        translate([21, 3, -1]) edge(3, 22, 270);
        translate([3, 81, -1]) edge(3, 22, 90);
        translate([21,81, -1]) edge(3, 22, 0);
        translate([12, 42, 9.3]) rotate([90,0,0]) cylinder($fn=32,d=18.6,h=70.2, center=true);
        translate([12, 42, 0]) cube([20, 80, 18.6], center=true);
        translate([1.9, 1.8, -1]) cube([20.4, 5, 19.6]);
        translate([1.9, 77.2, -1]) cube([20.4, 5, 19.6]);
    }
    translate([5, 1.5, 2.1])rotate([0, 90, 0]) cylinder(d=2, h=14);
    translate([5, 82.5, 2.1])rotate([0, 90, 0]) cylinder(d=2, h=14);
}

translate([2,2,50]){
    translate ([53, 5, 35]) rotate([0, 180, 0]) front_plate();
    mounting_plate();
    translate([54, 5.25, 13]) battery_lid();
}

 case();
 