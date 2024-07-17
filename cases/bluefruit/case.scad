module  bottom_case() {
    difference() {
        union() {
            cube([18, 40, 10], center=true);
            translate([0, 5, 2.5])
                cylinder($fn=60, d=35, h=15, center=true);
        }
        translate([0, -1, 3.5]) cube([16, 34, 15], center=true);
        translate([0, -19, 0]) cube([12.5, 4, 5], center=true);
        translate([0, -19, 3]) cube([12.5, 4, 5], center=true);
        translate([0, 5, 8]) cylinder($fn=60, d=32, h=10, center=true);
        translate([0, 5, 5]) cylinder($fn=60, d=28, h=10, center=true);
    }
    translate([0, 15, -2]) cube([18, 2, 4], center=true);
    translate([8.5, -15, 7.5]) cube([1, 10, 5], center=true);
    translate([-8.5, -15, 7.5]) cube([1, 10, 5], center=true);
    translate([8.0, -19, 7.5]) cube([2, 2, 5], center=true);
    translate([-8.0, -19, 7.5]) cube([2, 2, 5], center=true);
}

module top_case() {
    difference() {
        union() {
            translate([0, -15.0, 0]) 
                cube([18, 10, 2], center=true);
            translate([0, -12.8, -0.5]) 
                cube([15.8, 10, 3], center=true);
            translate([0, -14, -2.5]) 
                cube([15.8, 8, 7], center=true);
            translate([0, -19, -2.5]) 
                cube([13.8, 2, 7], center=true);
            translate([0, -19, -3.0]) 
                cube([12.3, 2, 8], center=true);
            translate([0, 5, 0])
                cylinder($fn=60, d=35, h=2, center=true);
            translate([0, 5, -0.5])
                cylinder($fn=60, d=31.8, h=3, center=true);
        }
        translate([0, 5, 0]) {
            for (x = [-7.5: 5: 7.5]) {
                for (y = [-7.5: 5: 7.5]) {
                    translate([x, y, 0]) 
                        cylinder($fn=15, d=3, h=10, center=true);
                }
            }
        }
    }     
}

bottom_case();
// translate([0,0,20]) top_case();