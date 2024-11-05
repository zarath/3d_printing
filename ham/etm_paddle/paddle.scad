a=3.0;
$fn=64;
module bridge() {
    translate([1.5, 1.5, 0]) hull() {
        cylinder(h = 5, d = 3);
        translate([5 ,0, 0])cylinder(h = 5, d = 3);
    }
}

module paddle_base() {
    minkowski() {
        translate([a / 2, a / 2, a / 2]) linear_extrude(height = 4 - a)
            polygon(
                [
                    [0, 0], [48 - a, 0], 
                    [48 - a, 25 - a], [25 - a, 25 - a],
                    [18 - a, 32 - a], [0, 32 - a], [0, 0]
                ]);
        sphere(a / 2);
    }
    translate([40, 22, 2]) bridge();
    translate([40, 10, 2]) bridge();
}

difference() {
    paddle_base();
    translate([43, 17.5, -1]) cylinder(h=9, d=3.5);
}