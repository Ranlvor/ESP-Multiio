tolerance = 0;

module switch() {
    cylinder(h=9,d=5.19+2*tolerance);
    translate([0,0,9-5]) {
        cylinder(h=1+tolerance,d=12+tolerance);
        translate([10/2, -2.5/2-tolerance, -1]) cube([4,2.5+2*tolerance,2+tolerance]);
    };
    translate([-13.2/2-tolerance,-7.9/2-tolerance,-9.5-2*tolerance]) cube([13.2+2*tolerance,7.9+2*tolerance,9.5+2*tolerance]);
    
    translate([-1/2,-2/2,-4-9.5-2*tolerance]) cube([1, 2, 4]);
    translate([-1/2+4.7,-2/2,-4-9.5-2*tolerance]) cube([1, 2, 4]);
    translate([-1/2-4.7,-2/2,-4-9.5-2*tolerance]) cube([1, 2, 4]);
    
    //translate([0,0,9]) cylinder(d=3, h=11);
    translate([0,0,9]) rotate([0,12,0]) cylinder(d=3, h=11);
    translate([0,0,9]) rotate([0,-12,0]) cylinder(d=3, h=11);
}

switch();
