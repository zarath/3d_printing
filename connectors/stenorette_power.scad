

translate([ -7.5, 0.0, -4.0 ])
difference()
{
	cube([ 8.8, 5.9, 8.0 ], center = true);
	translate([ 0.0, 0.0, -6.0 ])
	union()
	{
		linear_extrude(8.0) polygon([ [ -3.5, -2.0 ], [ 1.5, -2.0 ], [ 3.5, 0.0 ], [ 3.5, 2.0 ], [ -3.5, 2.0 ] ]);
		translate([ -1.27, 0.0, 0.0 ])
		cylinder($fn = 12, d = 1, h = 12);
		translate([ 1.27, 0.0, 0.0 ])
		cylinder($fn = 12, d = 1, h = 12);
	}
}

translate([7.5, 0.0, -5.0])
difference()
{
	cube([ 11.0, 8.0, 10.0 ], center = true);
	translate([ 0.0, 0.0, -5.0 ])
	cube([ 9.0, 6.0, 4.0 ], center = true);
	cube([ 7.0, 4.0, 12.0 ], center = true);
}
