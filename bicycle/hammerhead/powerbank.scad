module powerbank (){
    rotate([90,90,0]) {
        translate([-5,-16,0]) {
            translate([0,0,0]) cylinder(h=97, r=6, center=true);
            translate([10,0,0]) cylinder(h=97, r=6, center=true);
            translate([0,32,0]) cylinder(h=97, r=6, center=true);
            translate([10,32,0]) cylinder(h=97, r=6, center=true);
            translate([5,16,0]) cube([10,44,97], center=true);
            translate([5,16,0]) cube([22,32,97], center=true);
        }
    }
}

module stem(){
    rotate([90,90,0]) {
        translate([-12,-12,0]) {
            translate([0,0,0]) cylinder(h=97, r=5, center=true);
            translate([24,0,0]) cylinder(h=97, r=5, center=true);
            translate([0,24,0]) cylinder(h=97, r=5, center=true);
            translate([24,24,0]) cylinder(h=97, r=5, center=true);
            translate([12,12,0]) cube([24,34,97], center=true);
            translate([12,12,0]) cube([34,24,97], center=true);
        }
    }
}

module spacer(){
    translate([-20,0,6.5]) rotate([90,90,0]) cylinder(h=55, r=2, center=true);
    translate([20,0,6.5]) rotate([90,90,0]) cylinder(h=55, r=2, center=true);
    translate([-20,0,-6.5]) rotate([90,90,0]) cylinder(h=55, r=2, center=true);
    translate([20,0,-6.5]) rotate([90,90,0]) cylinder(h=55, r=2, center=true);
    translate([0,0,0]) cube([44,55,13], center=true);
    translate([0,0,0]) cube([40,55,17], center=true);
}

difference() {
    spacer();
    translate([0,0,-13.5]) powerbank();
    translate([0,0, 19.5]) stem();
}