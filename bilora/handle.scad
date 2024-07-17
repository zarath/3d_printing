difference()
{
	union()
	{
		cube([ 16.0, 30.0, 3.0 ]);
		cube([ 16.0, 22.0, 6.0 ]);
	}
	translate([ 8.0 - 3.6, -1.0, 3.1 ])
	cube([ 7.2, 15.0, 4.0 ]);
	translate([ 8.0 - 3.6, -1.0, 1.0 ])
	cube([ 7.2, 18.0, 1.6 ]);
	translate([ 8.0 - 3.2, -1.0, 1.0 ])
	cube([ 6.4, 6.0, 6.0 ]);
	translate([ 8.0, 12.0, 2.0 ])
	cylinder($fn = 32, r = 1.6, h = 6.0);
	translate([ -2.0, 30.0, 26.0 ])
	rotate([ 0.0, 90.0, 0.0 ])
	cylinder($fn = 64, r = 25.0, h = 20.0);
	translate([ -2.0, 32.0, 6.0 ])
	rotate([ 90.0, 0.0, 0.0 ])
	cylinder($fn = 64, r = 4, h = 34);
	translate([ 18.0, 32.0, 6.0 ])
	rotate([ 90.0, 0.0, 0.0 ])
	cylinder($fn = 64, r = 4, h = 34);
	translate([ -1.0, -1.0, 3.1 ])
	cube([ 18.0, 6.0, 4.0 ]);
}
