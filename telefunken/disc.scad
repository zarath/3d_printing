difference(){
rotate_extrude($fn=200)
rotate([0,0,90])
polygon(
    points=[
        [0, 0], [0, 12.5], [3, 13],
       [3, 12], [1, 11.5], [1, 3.5], [3, 3],  [3, 2],
       [2, 1.75], [2,2], [1, 2],
       [1, 0]
       ]);
translate([0,0,1])
linear_extrude(3){
square([7, 1.75], center=true);
square([1.75, 7], center=true);
};
};