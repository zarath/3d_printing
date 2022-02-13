use<roundedcube.scad>

module plate1_1 () {
    roundedcube([53.5, 78, 1.8], apply_to="zmin", radius=0.8);
    translate([11, 77, 0]) cube([7, 3, 1.8]);
    translate([23.25, 77, 0]) cube([7, 3, 1.8]);
    translate([35.5, 77, 0]) cube([7, 3, 1.8]);

    translate([2, 74, 0.8]) cube([49.5, 2, 5]);

    translate([10, 32, 0.8]) cube([33.5, 42, 5]);
    translate([2, 42, 0.8]) cube([49.5, 32, 5]);
    translate([2, 32, 0.8])  cube([4, 42, 5]);
    translate([47.5, 32, 0.8])  cube([4, 42, 5]);

    translate([13.5, 2, 0.8]) cube([27, 2, 5]);
    translate([13.5, 15, 0.8]) cube([27, 2, 5]);
    translate([13.5, 2, 0.8]) cube([2, 13, 5]);
    translate([38.5, 2, 0.8]) cube([2, 13, 5]);

    translate([2, 2, 0.8]) cube([2, 74, 5]);
    translate([49.5, 2, 0.8]) cube([2, 74, 5]);

    translate([2.5, 39, 4.8]) rotate([90, 0, 0]) cylinder($fn=32, d=2, h=70, center=true);
    translate([51, 39, 4.8]) rotate([90, 0, 0]) cylinder($fn=32, d=2, h=70, center=true);
    translate([26.75, 2.5, 4.8]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=25, center=true);
    translate([26.75, 16.5, 4.8]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=25, center=true);
    translate([26.75, 75.5, 4.8]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=45.5, center=true);
    translate([26.75, 32.5, 4.8]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=28, center=true);
}

module plate1 () {
    difference() {
        plate1_1();
        translate([15.5, 4, 0.8]) cube([23,12,5]);
        for(y=[8: 0.2: 10]) {
        translate([19.25, y, 0]) cylinder($fn=32, d=4, h=12, center=true);
        translate([26.75, y, 0]) cylinder($fn=32, d=4, h=12, center=true);
        translate([34.25, y, 0]) cylinder($fn=32, d=4, h=12, center=true);
        }
    }
}

module ramp () {
        rotate([90, 0, 90])
            linear_extrude(height=5.8)
                polygon([[0, 0], [27, 0], [23.1, 3.9], [0, 3.9] ]);
}

module snap () {
    difference() {
        union() {
            cube([45.2, 5, 3.9]);
            translate([0, -3, 0]) cube([8.8, 28.1, 3.9]);
            translate([36.4, -3, 0]) cube([8.8, 28.1, 3.9]);
            translate([0, 7, 0]) ramp();
            translate([39.4, 7, 0]) ramp();
        }
        translate([4.4, 21.5, 2]) cylinder($fn=32, d=3, h=6, center=true);
        translate([40.8, 21.5, 2]) cylinder($fn=32, d=3, h=6, center=true);

    }
}

module edge() {
    translate([-6, 81, -1]) difference() {
        cube([12,12,12]);
        translate([12, 0, -1]) cylinder($fn=32, r=6, h=12);
    }
    translate([52, 81, -1]) difference() {
        cube([12,12,12]);
        cylinder($fn=32, r=6, h=12);
    }
}

module cap () {
    difference() {
        roundedcube([58, 87, 10], radius = 2, apply_to="zmax");

        translate([3.9, 7.9, -1]) cube([49.7, 74.2, 5.1]);
        translate([9, 85, -1]) cube([40,3,5]);
        
        translate([28.75, 8, 3]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=49.5, center=true);
        translate([28.75, 82, 3]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=49.5, center=true);

        translate([4, 45, 3]) rotate([90, 0, 0]) cylinder($fn=32, d=2, h=74, center=true);
        translate([54, 45, 3]) rotate([90, 0, 0]) cylinder($fn=32, d=2, h=74, center=true);

        translate([6.4, -1, -1]) cube([6, 10, 5]);
        translate([45.6, -1, -1]) cube([6, 10, 5]);

        translate([6.4, 2, -1]) cube([9, 38, 5]);
        translate([42.6, 2, -1]) cube([9, 38, 5]);

        translate([16.5, 0.8, -1]) cube([5,6,6]);
        translate([36.5, 0.8, -1]) cube([5,6,6]);

        for(x=[26.5: 0.2: 31.5]) {
            translate([x, 15, 6]) cylinder($fn=32, d=5, h=12, center=true);
        }

        for(y=[9.3: 0.2: 12.3]) {
            translate([10.8, y, 6]) cylinder($fn=32, d=5, h=12, center=true);
            translate([47.2, y, 6]) cylinder($fn=32, d=5, h=12, center=true);
            translate([10.8, y, 13]) sphere($fn=32, d=10);
            translate([47.2, y, 13]) sphere($fn=32, d=10);
        }
        edge();
    }

    translate([18.5, 23.1, 0]) difference() {
        cube([22, 1.5, 5]);
        translate([14,0,4]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=22, center=true);
    }
    translate([18.5, 36.4, 0]) difference() {
        cube([22, 1.5, 5]);
        translate([14,1.5,4]) rotate([0, 90, 0]) cylinder($fn=32, d=2, h=22, center=true);

    }
}

module pin (){
    translate([0,0,4.3])cylinder($fn=32, d=2.8, h=8.6, center=true);
    translate([0,0,8.6])sphere($fn=32, d=2.8);
}

module pin_cap (){
    difference() {
        cylinder($fn=32, d=4.8, h=5);
        translate([0,0,-2])cylinder($fn=32, d=3, h=5);
    }
}

plate1();
color("red") translate([4.2, 25.6, 5.9]) rotate([180,0,0]) snap();
color("red") translate([8.6, 4.1, 2]) pin();
color("red") translate([45, 4.1, 2]) pin();
translate([-2.25, -6, 1.8]) cap();
// cap ();
// pin ();
// pin_cap ();

