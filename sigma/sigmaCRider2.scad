module flap() 
{
    h = 1.9;
    b = 13.5;
    l = 22.5;
    p = [[0, 0, 0], [0, l, 0.5], [0, l, b-1], [0, 0, b],
         [h, 0, 0], [h, l, 0.5], [h, l, b-1], [h, 0, b]];
    f = [[0, 1, 2, 3], [4, 5, 1, 0], [7, 6, 5, 4], 
         [5, 6, 2, 1], [6, 7, 3, 2], [7, 4, 0 ,3]];
    p2 = [[h, 0, 1.25], [h, l-2, 2.25], [h, l-2, b-2.75], [h, 0, b-1.25],
          [h+2, 0, 1.25], [h+2, l-2, 2.25], [h+2, l-2, b-2.75], [h+2, 0, b-1.25]];
    p3 = [[h+2, 0, b/2-1.5], [h+2, l-2, b/2-1.5], [h+2, l-2, b/2+1.5], [h+2, 0, b/2+1.5], 
          [h+4, 0, b/2-1.5], [h+4, 0, b/2+1.5]];
    f3 = [[0, 1, 2, 3], [5, 2, 1, 4], [5, 4, 0, 3], 
          [4, 1, 0], [5, 3, 2] ];
  
   polyhedron(points = p, faces= f);
   polyhedron(points = p2, faces= f);
   polyhedron(points = p3, faces= f3);
    
    translate([0, 6, 2.9]) {
    rotate([0, 90, 0])cylinder(h+2, 2, 2);};
  
    translate([0, 6, b-2.9]) {
    rotate([0, 90, 0])cylinder(h+2, 2, 2);};
};
module adapter1() {
    l = 28;
    b = 22;
    h = 2.5;
    
    translate([2, 0, 0]) difference(){
        cube([b-4, l, h]);
        translate ([7, 22, 0]) cube([4, 3, h]);
    }
    cube([b, 2, h]);
    translate([6.0, 0, 2.5]) cube([10, l, 4]);
}

module adapter1_insert1() {

    p = [[7, 13, 6.5], [7, 28, 6.5], [15, 28, 6.5], [15, 13, 6.5],
         [7, 13, 15.1], [15, 13, 15.1]];
    f = [[0, 1, 2, 3], [1, 4, 5, 2], [4, 0, 3, 5], 
         [0, 4, 1], [3, 2, 5]];
  
    polyhedron(points = p, faces= f);
}

module cuberider()
{  
  rotate([0,0, 180]) adapter1();
  rotate([0,0, 180]) adapter1_insert1();  
  translate([-17.75, -28, 6.5]) {rotate([30,0,0]) {rotate([0, 90, 0]) flap();};};
}
  
//flap();
//adapter1();
cuberider();
