module base(){
    linear_extrude(1){
        difference() {
            union() {
                square([11.5, 74]);
                polygon([[0, 0], [0, 26], [-4, 20], [-4, 0]]);
            };
            translate([1, 16])circle(1.55, $fn=12);
        };
    };
};
module base2(){
    linear_extrude(1){
        translate([1.5, 0]) difference(){
            square([10, 74]);
            polygon ([[0, 8], [0, 24], [4, 20], [4, 12]]);
        };
    };
};

module wall(){
    linear_extrude(13){
        translate([6.5, 0]) square([5, 74]);
    };
};

module ramp() {
    translate([11.5, 0, 15])
    rotate(a=[270, 90, 0])
    linear_extrude(74) polygon([[0, 0], [0, 4], [4, 0]]);
};

difference() {
    union() {
        translate([0, 0, 14]) base();
        translate([0, 0, 13]) base2();
        wall();
    };
    ramp();
}