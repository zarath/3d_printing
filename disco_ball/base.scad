difference () {
    cylinder($fn=60, 5, 44.5, 44.5);
    translate([0, 0, -1]) cylinder($fn=60, 7, 39.5, 39.5);
    for (a =[0:120:359])
        translate([42 * sin(a), 42 * cos(a), 3.5])
        rotate([0, 0, a / 2])
              cube([3, 3, 3], center=true);
}

