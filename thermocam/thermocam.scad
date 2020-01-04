use<threads.scad>
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
        translate([15,1,8])rotate([270,0,0])cylinder($fn=6, h=6, r=3.3);
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


main_box();

translate([0, -3, 0])bottom_plate();

translate([1, 1, 26])front_plate();
