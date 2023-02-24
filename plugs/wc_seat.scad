$fn = 60;
dia = 14;
heigth = 14;
dia_inner = 7.5;

difference () {
    cylinder(d=dia, h=heigth, center = true);
    cylinder(d=dia_inner, h=heigth+2, center = true);
}