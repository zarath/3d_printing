$fn = 60;
dia = 20.2;
dia_drill = 3;

difference () {
    cube([dia * 1.3, dia * 1.3,dia * 1.3], center = true);
    cylinder(d=dia, h=dia * 1.4, center = true);
    rotate([90, 0, 0]) cylinder(d=dia_drill, h=dia * 1.4, center = true);
}