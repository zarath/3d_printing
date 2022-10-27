// use<threads.scad>
$fn= 16;

module main_box() {
    difference() {

        // case size
        cube([30,44,25]);

        // cut-outs
        translate([7,-1,2])cube([16,25,4]);
        translate([7,-2,4])cube([16,44,24]);
        translate([7,-2,4])cube([16,44,24]);
        translate([5.2,-2,4])cube([19.6,44,2]);
        translate([2.3,-2,16])cube([25.4,32.75,1.2]);
        translate([3.9,-2,17.2])cube([22.2,44,6]);
        translate([2,-2,19.2])cube([26,44,6]);

        translate([1,-1,22])cube([28,44,2]);

        //screw holes thermo
        translate([8.3,39.75,-1])cylinder(h=26, r=1.3);
        translate([8.3,39.75,5])cylinder(h=26, r=2.3);
        translate([8.3,39.75,-1])cylinder($fn=6, h=3.0, r=3);

        translate([21.7,39.75,-1])cylinder(h=26, r=1.3);
        translate([21.7,39.75,5])cylinder(h=26, r=2.3);
        translate([21.7,39.75,-1])cylinder($fn=6, h=3.0, r=3);

        //screw holes visible
        translate([4.4,28.75,-1])cylinder(h=26, r=1.3);
        translate([4.4,28.75,17])cylinder(h=26, r=2.3);
        translate([4.4,28.75,-1])cylinder($fn=6, h=3.0, r=3);

        translate([25.6,28.75,-1])cylinder(h=26, r=1.3);
        translate([25.6,28.75,17])cylinder(h=26, r=2.3);
        translate([25.6,28.75,-1])cylinder($fn=6, h=3.0, r=3);

        translate([4.4,15.15,-1])cylinder(h=26, r=1.3);
        translate([4.4,15.15,17])cylinder(h=26, r=2.3);
        translate([4.4,15.15,-1])cylinder($fn=6, h=3.0, r=3);

        translate([25.6,15.15,-1])cylinder(h=26, r=1.3);
        translate([25.6,15.15,17])cylinder(h=26, r=2.3);
        translate([25.6,15.15,-1])cylinder($fn=6, h=3.0, r=3);

        // bottom plate mount
        // cut-out
        translate([1,-1,1])cube([28,3,22]);

        // screw and nut holes
        translate([4,0,11.5])rotate([270,0,0])cylinder(12, 1.3, 1.3);
        translate([4,10,11.5])rotate([270,0,0])cylinder($fn=6, h=2.0, r=3);
        translate([-1,10,8.9])cube([5,2,5.2]);

        translate([26,0,11.5])rotate([270,0,0])cylinder(12, 1.3, 1.3);
        translate([26,10,11.5])rotate([270,0,0])cylinder($fn=6, h=2.0, r=3);
        translate([27,10,8.9])cube([5,2,5.2]);
    };
};

module bottom_plate(){

    difference(){
        union(){
            translate([1,-2,1])cube([28,4,21]);
            translate([0,-2,0])cube([30,2,25]);
            translate([15,-2,8])rotate([270,0,0])cylinder($fn=32, h=6, r1=6, r2=4);
            translate([2,0,20])cube([26,2,5]);
        };
        translate([0,1,22])cube([30,2,2]);

        // cable hole
        translate([10,-3,15.5])cube([10, 8, 4.4]);
        translate([3.8,-3,19.5])cube([22.4, 8,0.4]);

        // screw and nut holes
        translate([4,-3,11.5])rotate([270,0,0])cylinder(h=6, r=1.3);
        translate([4,-3,11.5])rotate([270,0,0])cylinder(h=3, r=2.3);

        translate([26,-3,11.5])rotate([270,0,0])cylinder(h=6, r=1.3);
        translate([26,-3,11.5])rotate([270,0,0])cylinder(h=3, r=2.3);
       
        // thread
        //translate([15,-3,8])rotate([270,0,0])english_thread(diameter=1/4, threads_per_inch=20, length=5/16);
        translate([15,-3,8])rotate([270,0,0])cylinder(h=8, r=1.6);
    };
};

module front_plate(){
    difference(){
        union(){
            cube([27.8,41.8,1.7]);
            translate([1.1,1.1,0])cube([25.6,39.6,3]);
        }
        translate([13.9,20.7,-1])cylinder($fn=32, h=4.1, r1=1.5, r2=5.5);
        translate([13.9,34.8,-1])cylinder($fn=32, h=4.1, r1=3.5, r2=7.0);
    };
};


module edge(r, h, dir){
    rotate([0, 0, dir])
    difference() {
     cube([r, r, h]);
     translate([0, 0, -1])cylinder(r=r, h=h+2);
    }
}

module front_plate2(){
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
        translate([-5, 70, -1]) cube([15, 50, 5]);
        translate([15, 5, 0]){
            translate([5.1, 5.1, -1]) cube([38.0-5.1 *2 , 35.15, 25.0]);
            translate([5.1, 35.15 + 4 + 5.1, -1]) cube([38.0-5.1 *2 , 35.15, 25.0]);
            translate([3, 3, -1])cylinder(d=2.7, h=27.0);
            translate([3, 3, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
            translate([35, 3, -1])cylinder(d=2.7, h=27.0);
            translate([35, 3, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
            translate([3, 81.5, -1])cylinder(d=2.7, h=27.0);
            translate([3, 81.5, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
            translate([35, 81.5, -1])cylinder(d=2.7, h=27.0);
            translate([35, 81.5, -1])rotate([0,0,90])cylinder($fn=6, r=3, h=3.0);
        }
        translate([56+9.3, 12, 11.3])rotate([-90,0,0])cylinder($fn=32,d=18.6,h=70);
        translate([56+6.5, 12, -1]) cylinder(d=5,h=27);
        translate([56+7.9, 12.75, 2.6]) cylinder(d=5,h=27);
        translate([56+9.9, 13, 2.4]) cylinder(d=5,h=27);
        translate([56+9.3, 82, -1]) cylinder(d=5,h=27);
        translate([56+2, 7, 5])rotate([0,90,0]) cylinder(d=2,h=16);
        translate([56+2, 87, 5])rotate([0,90,0]) cylinder(d=2,h=16);

        translate([15, 10, 0]){
            translate([3.5, 3.5, -1])cylinder(d=2.7, h=27.0);
            translate([3.5, 3.5, 1])cylinder(d=5, h=27.0);
            translate([3.5 + 49, 3.5, -1])cylinder(d=2.7, h=27.0);
            translate([3.5 + 49, 3.5,1])cylinder(d=5, h=27.0);
            translate([3.5, 3.5 + 58, -1])cylinder(d=2.7, h=27.0);
            translate([3.5, 3.5 + 58, 1])cylinder(d=5, h=27.0);
            translate([3.5 + 49, 3.5 + 58, -1])cylinder(d=2.7, h=27.0);
            translate([3.5 + 49, 3.5 + 58, 1])cylinder(d=5, h=27.0);
        }

        translate([3,3,-1])cylinder(d=2.7, h=27.0);
        translate([3,3,1])cylinder(d=5, h=27.0);
        translate([76-3,3,-1])cylinder(d=2.7, h=27.0);
        translate([76-3,3,1])cylinder(d=5, h=27.0);
        translate([13,100-3,-1])cylinder(d=2.7, h=27.0);
        translate([13,100-3,1])cylinder(d=5, h=27.0);
        translate([76-3,100-3,-1])cylinder(d=2.7, h=27.0);
        translate([76-3,100-3,1])cylinder(d=5, h=27.0);
        translate([3,70-3,-1])cylinder(d=2.7, h=27.0);
        translate([3,70-3,1])cylinder(d=5, h=27.0);


    }
}

// translate ([53, 5, 35]) rotate([0, 180, 0]) front_plate2();
mounting_plate();

// main_box();

// translate([0, -3, 0])bottom_plate();

// translate([1, 1, 26])front_plate();
