// text_on_cube.scad - Example for text() usage in OpenSCAD

echo(version=version());

font = "Liberation Sans";

cube_size = 60;
letter_size = 4.5;
letter_height = 1;
nut_radius = 4.65;

o = cube_size / 2 - letter_height / 2;


module letter(l) {
	// Use linear_extrude() to make the letters 3D objects as they
	// are only 2D shapes when only using text()
	linear_extrude(height = letter_height) {
		text(l, size = letter_size, font = font, halign = "center", valign = "center", $fn = 16);
	}
}

module tray(){
	difference() {
		union() {
			color("gray") cube([62, 44, 10], center = true);
			translate([-15, -9, 5]) letter("3");
			translate([-5, -9, 5]) letter("6");
			translate([5, -9, 5]) letter("10");
			translate([15, -9, 5]) letter("20");
			translate([25, -9, 5]) letter("30");

			translate([5, 13, 3]) cylinder(r=2.75, h=10, center=true, $fn=16);
			translate([15, 13, 3]) cylinder(r=2.75, h=10, center=true, $fn=16);
			translate([25, 13, 3]) cylinder(r=2.75, h=10, center=true, $fn=16);
		}

		translate([-25, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([-15, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([-5, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([5, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([15, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([25, -17, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);

		translate([-25, -1, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([-15, -1, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([-5, -1, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([5, -1, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([15, -1, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);
		translate([25, -1, 2]) cylinder(r=nut_radius, h=10, center=true, $fn=6);

		translate([-25, 13, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);
		translate([-15, 13, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);
		translate([-5, 13, 2]) cylinder(r=3.25, h=10, center=true, $fn=16);

		translate([5, 13, 6]) cylinder(r=.8, h=5, center=true, $fn=16);
		translate([15, 13, 6]) cylinder(r=.8, h=5, center=true, $fn=16);
		translate([25, 13, 6]) cylinder(r=.8, h=5, center=true, $fn=16);

	}
}

module holder(){
	difference() {
		color("gray") cube([62, 18, 20], center = true);


		translate([-25, 0, 8]) cylinder(r=nut_radius + .2, h=20, center=true, $fn=32);
		translate([-15, 0, 8]) cylinder(r=nut_radius + .2 , h=20, center=true, $fn=32);
		translate([-5, 0, 8]) cylinder(r=nut_radius + .2, h=20, center=true, $fn=32);

		translate([5, 0 , 8]) cylinder(r=3.3, h=20, center=true, $fn=16);
		translate([15, 0, 8]) cylinder(r=3.3, h=20, center=true, $fn=16);
		translate([25, 0, 8]) cylinder(r=3.3, h=20, center=true, $fn=16);



		// Put some symbols on top and bottom using symbols from the
	}
}

tray();
// holder();