// handlebar plug v0.3
difference() {
  // body
  union() {
    // main body
    rotate_extrude($fn = 120)
    polygon(points = [
             [0, 0], [12.5, 0], [13.5, 3.5], [12.5, 3.5],
             [12.5, 6], [9, 6], [9, 12], [10, 12],
             [10, 17], [8, 21], [7, 21], [6, 4], [0, 4]
            ]);
    // supports
    rotate(45) translate([0,0,11.5]) union() {
      cube([2,14,16], true);
      cube([14,2,16], true);
    };
  };

  // slots
  translate([0,0,18]) union() {
    cube([2,28,22], true);
    cube([28,2,22], true);
  };
  
  // cut support
  translate([0,0,3]) cylinder($fn=120, 17, 4, 7);
};
