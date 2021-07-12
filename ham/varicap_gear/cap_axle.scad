use<threads.scad>

//  thread
translate([0, 0, 22]){
  difference(){
  metric_thread (diameter=8, pitch=1.666, length=10, square=true);
  translate([0, 0, 6]) cylinder($fn=10, 8, 1.5, 1.5);
  }
}

// axle inside gearbox
translate([0, 0,  14])
  cylinder($fn=30, 8, 5.5,  5.5);

// expanding to cap flange
translate([0, 0, 7]) difference() {
    cylinder($fn=45, 7, 11,  5.5);
    cylinder($fn=30, 3, 3.25, 3.25);
}

// cap axle flange
difference() {
  cylinder($fn=60, 7, 11, 11);
  cylinder($fn=30, 7, 3.25, 3.25);
  translate([0, 0, 3.5])
    rotate([0, 90, 0])
    cylinder($fn=10, 11, 1.5, 1.5);
    translate([6, 0, 3.5])
    cube([2.5,  5.5, 7], center=true);
    }

