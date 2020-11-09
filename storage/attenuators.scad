// text_on_cube.scad - Example for text() usage in OpenSCAD

echo(version=version());

font = "Liberation Sans";

cube_size = 60;
letter_size = 3.5;
letter_height = 1;
nut_radius = 4.6;

o = cube_size / 2 - letter_height / 2;


module letter(l) {
	// Use linear_extrude() to make the letters 3D objects as they
	// are only 2D shapes when only using text()
	linear_extrude(height = letter_height) {
		text(l, size = letter_size, font = font, halign = "center", valign = "center", $fn = 16);
	}
}

difference() {
	union() {
		color("gray") cube([64, 46, 10], center = true);
		translate([-15, -10, 5]) letter("3");
		translate([-5, -10, 5]) letter("6");
		translate([5, -10, 5]) letter("10");
		translate([15, -10, 5]) letter("20");
		translate([25, -10, 5]) letter("30");

		translate([5, 12, 3]) cylinder(r=2.75, h=10, center=true, $fn=16);
		translate([15, 12, 3]) cylinder(r=2.75, h=10, center=true, $fn=16);
		translate([25, 12, 3]) cylinder(r=2.75, h=10, center=true, $fn=16);
	}

	translate([-25, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([-15, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([-5, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([5, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([15, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([25, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);

	translate([-25, -3, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([-15, -3, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([-5, -3, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([5, -3, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([15, -3, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
	translate([25, -3, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);

	translate([-25, 12, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);
	translate([-15, 12, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);
	translate([-5, 12, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);
	translate([-25, 12, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);

	translate([5, 12, 6]) cylinder(r=.75, h=5, center=true, $fn=16);
	translate([15, 12, 6]) cylinder(r=.75, h=5, center=true, $fn=16);
	translate([25, 12, 6]) cylinder(r=.75, h=5, center=true, $fn=16);



	// Put some symbols on top and bottom using symbols from the
	// Unicode symbols table.
	// (see https://en.wikipedia.org/wiki/Miscellaneous_Symbols)
	//
	// Note that depending on the font used, not all the symbols
	// are actually available.
	translate([0, 0, o])  letter("\u263A");
	translate([0, 0, -o - letter_height])  letter("\u263C");
}
