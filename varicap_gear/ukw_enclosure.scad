module Base()
{
  difference() {
    union () {
      cube([40, 66.5, 33], center=true);
      translate([0, 5.5, 8.5]) rotate([90, 0, 0])cylinder($fn=128, r=20, h=66.5, center=true); 
    }
    translate([0 ,0, 36.5])cube([50, 80, 40], center=true);

    translate([4.5,0, 2])cube([23, 56, 33], center=true);
    translate([-4.5,0, 2])cube([23, 51, 33], center=true);
    translate([0, 15, 8.5]) rotate([90, 0, 0])cylinder($fn=32, r=5.75, h=80, center=true); 
    translate([0, 15, 14.25]) cube([11.5, 80, 11.5], center=true); 

  }
}

Base();