$fn=32;

module fastener() {
    difference() {
        cylinder(r=5, h=25, center=true);
        translate([0, 0, 7.5]) cylinder(r=1.65, h=10, center=true);
        translate([0, 0, -7.5]) cylinder(r=1.65, h=10, center=true);
        translate([0, 0, 4.5]) cylinder(r=2.1, h=4, center=true);
        translate([0, 0, -4.5]) cylinder(r=2.1, h=4, center=true);
    };
};

fastener();
