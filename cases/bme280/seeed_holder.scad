$fn = 64;
difference()
{
    linear_extrude(8) polygon([
        [ 0, 0 ], [ 10, 0 ], [ 10, 17 ], [ 43, 17 ], [ 43, 0 ], [ 53, 0 ], [ 53, 2 ], [ 45, 2 ], [ 45, 19 ], [ 8, 19 ],
        [ 8, 2 ], [ 0, 2 ], [ 0, 0 ]
    ]);
    translate([ 4, 0, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 4, h = 6, center = true);
    translate([ 49, 0, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 4, h = 6, center = true);

    translate([ 14, 17, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 3.5, h = 6, center = true);
    translate([ 19, 17, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 3.5, h = 6, center = true);
    translate([ 24, 17, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 3.5, h = 6, center = true);
    translate([ 29, 17, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 3.5, h = 6, center = true);
    translate([ 34, 17, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 3.5, h = 6, center = true);
    translate([ 39, 17, 4 ]) rotate([ 90, 0, 0 ]) cylinder(d = 3.5, h = 6, center = true);
}