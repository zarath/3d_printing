translate ([0, 0, 2])
difference () {
    cylinder($fn=60, 10, 44.5, 44.5);
    translate([0, 0, -1]) cylinder($fn=60, 12, 39.5, 39.5);
    for (a =[0:120:359])
        translate([42 * sin(a), 42 * cos(a), 8.5])
        rotate([0, 0, a / 2])
              cube([3, 3, 3], center=true);
}

difference () {
    cylinder($fn=60, 2, 44.5, 44.5);
    translate([0, 0, -1]) cylinder($fn=60, 12, 37.0, 37.0);
}
