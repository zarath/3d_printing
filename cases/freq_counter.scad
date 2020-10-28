$fn= 16;

module stud(){
    difference() {
        union() {
            cylinder(r=2.5, h=10, center=true);
            cylinder(r=1.5, h=13, center=true);
        };
        translate ([0,0,-3])cylinder(r=1.1, h=8, center=true);
    }
};

module stud2(){
    difference() {
        union() {
            cylinder(r=4, h=46, center=true);
        };
        translate ([0,0,-3])cylinder(r=1.2, h=46, center=true);
    }
};

module case_top() {
    difference() {
        cube([132.5, 50, 50]);
        translate([3, 3, 3]) cube([126.5, 60, 44]);
        translate([1.5, 47, 1.5]) cube([129.5, 60, 47]);

        translate([10, -10, 34 - 7.5])cube([100, 70, 16]);
        translate([0,-7, 52.5])    rotate([270, 0, 0])polyhedron([
            [0, 0, 0], [120, 0, 0], [120, 36, 0], [0, 36, 0],
            [10, 10, 10], [110, 10, 10], [110, 26, 10], [10, 26, 10],
        ],[
            [0,1,2,3], [4,5,1,0], [7,6,5,4], [5,6,2,1], [7,4,0,3]
        ]);
        translate([118.5, -2, 50 - 10.5])rotate([90, 0, 0])cylinder(r=1.75, h=15, center=true);
        translate([118.5, -2, 50 - 22])rotate([90, 0, 0])cylinder(r=1.75, h=15, center=true);

        translate([14.5, -2, 12])rotate([90, 0, 0])cylinder(r=4.5, h=15, center=true);
        translate([14.5 + 35, -2, 12])rotate([90, 0, 0])cylinder(r=4.5, h=15, center=true);
    };

    cube([132.5, 2.9, 8.4]);
    
    translate([6.5, 8, 50 - 6.5]) rotate([90, 0, 0]) stud();
    translate([6.5, 8, 50 - 24.5]) rotate([90, 0, 0]) stud();
    translate([124.5, 8, 50 - 6.5]) rotate([90, 0, 0]) stud();
    translate([124.5, 8, 50 - 24.5]) rotate([90, 0, 0]) stud();

    translate([32, 24, 10]) rotate([90, 0, 0]) stud2();
    translate([128.5, 24, 10]) rotate([90, 0, 0]) stud2();
    translate([66.25, 24, 10]) rotate([90, 0, 0]) stud2();

    translate([8,49,0]) cube([8, 1, 2]);
    translate([116.5,49,0]) cube([8, 1, 2]);
    translate([62.25,49,0]) cube([8, 1, 2]);

    translate([8,49,48]) cube([8, 1, 2]);
    translate([116.5,49,48]) cube([8, 1, 2]);
    translate([62.25,49,48]) cube([8, 1, 2]);

    translate([0,49,21]) cube([2, 1, 8]);
    translate([130.5,49,21]) cube([2, 1, 8]);
};


module case_bottom() {
   translate([1.6,47,1.6]) union() {
        difference() {
           cube([129.3, 3, 46.8]);
           translate([5.5,1.8,-1]) cube([10, 2, 2]);
           translate([129.3 -15.5,1.8,-1]) cube([10, 2, 2]);
           translate([59.65,1.8,-1]) cube([10, 2, 2]);

           translate([5.5,1.8,45.8]) cube([10, 2, 2]);
           translate([129.3 - 15.5,1.8,45.8]) cube([10, 2, 2]);
           translate([59.65,1.8,45.8]) cube([10, 2, 2]);

           translate([-1,1.8,18.4]) cube([2, 2, 10]);
           translate([128.3,1.8,18.4]) cube([2, 2, 10]);
           translate([89,-15,3]) cube([22, 20, 15]);


        };
        translate([100, -20.8,10]) rotate([270,0,0])
            import("StandardFemaleSingleMount.stl", convexity=3);
   };
};


module buttons() {
    difference() {
        union() {
            cylinder(r=1.5, h=10, center=true);
            translate([0,0, -3]) cylinder(r=2.5, h=4, center=true);
        };
        translate([0, 0, -4]) cylinder(r=1.7, h=4, center=true);
    };

}

// buttons();
case_top();
// case_bottom();
