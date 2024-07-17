module knob() {
    difference() {
        linear_extrude(height=6.0, center=true) 
        polygon(
            points=[
                [-5.0, 0.0], [5.0, 0.0], [5.0, 4.0], [3.0, 10.5],
                [2.0, 10.3], [1.0, 10.25], [0.0, 10.2], [-1.0, 10.25],
                [-2.0, 10.3],
                [-3.0, 10.5], [-5.0, 4.0]
                ]);

        linear_extrude(height=3.6, center=true) 
        polygon(
            points=[
                [-3.6, -1.0], [3.6, -1.0], [3.6, 3.0], [1.9, 9.5],
                [-1.9, 9.5], [-3.6, 3.0]
                ]);
    }
    translate([2.3, 4.0, 1.8]) cube([1.0, 8.0, 1.0], center=true);
    translate([2.3, 4.0, -1.8]) cube([1.0, 8.0, 1.0], center=true);
    translate([-2.3, 4.0, 1.8]) cube([1.0, 8.0, 1.0], center=true);
    translate([-2.3, 4.0, -1.8]) cube([1.0, 8.0, 1.0], center=true);
    translate([0.0, 3.3, 2.0]) 
    rotate([0.0, 90.0, 0.0]) cylinder($fn=30, h = 8.0, r = .425, center=true);
    translate([0.0, 3.3, -2.0]) 
    rotate([0.0, 90.0, 0.0]) cylinder($fn=30, h = 8.0, r = .425, center=true);
}

module notch () {
    cube([18.5, 5.0, 1.5]);
    translate([8.0, 1.4, 0.0]) cube([6.8, 2.2, 1.5 + 0.8]);
    translate([8.0, 1.4, 0.0]) cube([4.0, 2.2, 1.5 + 1.5]);
    translate([8.0, 1.4, 0.0]) cube([2.2, 2.2, 1.5 + 2.2]);

}

// knob();

notch();