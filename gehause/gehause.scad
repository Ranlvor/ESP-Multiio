

tolerance = 0.2;
epsilon = 0.001;
inf = 100;

roundingRadius = 5;
boardX = 75;
boardY = 68;
boardZ = 1.6;
spaceTop = 15;
spaceBottom = 15;
margin = 5;


mode = [
      1, //normal Mode
      0, //infill Mode
      1, //support block Mode
      1, //text Mode
];
//$fn = 96;


module switch() {
    cylinder(h=9,d=6+2*tolerance);
    translate([0,0,9-5]) {
        cylinder(h=1+tolerance,d=12+2*tolerance);
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

module led() {
    translate([0,0,-3]) cylinder(d=3+2*tolerance, h=3);
    translate([0,0,-23]) cylinder(d=4+2*tolerance,h=20);
}
module mountingPole() {
  dia = 7.5;
  difference() {
    hull() {
      translate([0,0,boardZ]) cylinder(d=dia, h=spaceTop-1);
      translate([dia/2,dia/2,boardZ]) cube([4,4,spaceTop-1]);
      translate([-dia/2,dia/2,boardZ]) cube([4,4,spaceTop-1]);
      translate([dia/2,-dia/2,boardZ]) cube([4,4,spaceTop-1]);
    }
  }
}
//color("green") cube([boardX, boardY, boardZ]);
//mountingPole();
if(mode[0]) {
  difference() {
    union() {
      difference() {
        hull() {
        translate([-margin,        -margin,        boardZ+spaceTop-roundingRadius]) sphere(roundingRadius);
        translate([boardX+margin,-margin,        boardZ+spaceTop-roundingRadius]) sphere(roundingRadius);
        translate([-margin,        boardY+margin,boardZ+spaceTop-roundingRadius]) sphere(roundingRadius);
        translate([boardX+margin,boardY+margin,boardZ+spaceTop-roundingRadius]) sphere(roundingRadius);
      
        //*
        translate([-margin,      -margin,      0]) cylinder(r=roundingRadius);
        translate([boardX+margin,-margin,      0]) cylinder(r=roundingRadius);
        translate([-margin,      boardY+margin,0]) cylinder(r=roundingRadius);
        translate([boardX+margin,boardY+margin,0]) cylinder(r=roundingRadius); // */
        }
      
  
        translate([-tolerance,-tolerance,-inf+spaceTop-5+boardZ]) cube([boardX+2*tolerance, boardY+2*tolerance, inf]);
        for(i = [0:3]) {
           //switches
          translate([9,13+14*i,10+boardZ+tolerance]) rotate([0,0,180]) switch();
          //leds
          translate([19,13+14*i,boardZ+spaceTop]) led();
          translate([26,13+14*i,boardZ+spaceTop]) led();
        }
      }
      translate([        5,        5,0]) rotate([0,0,180]) mountingPole();
      translate([        5,boardY-5,0]) rotate([0,0, 90]) mountingPole();
      translate([boardX-5,        5,0]) rotate([0,0,-90]) mountingPole();
      translate([boardX-5,boardY-5,0])                  mountingPole();
    }
    translate([        5,        5,0]) cylinder(d=4, h=boardZ+spaceTop-2);
    translate([        5,boardY-5,0]) cylinder(d=4, h=boardZ+spaceTop-2);
    translate([boardX-5,        5,0]) cylinder(d=4, h=boardZ+spaceTop-2);
    translate([boardX-5,boardY-5,0]) cylinder(d=4, h=boardZ+spaceTop-2);
  }
}

color("green") if(mode[1]){
   hull() {
       translate([10,-10,8+boardZ+tolerance]) rotate([0,0,180]) cylinder(d=15,h=10);
       translate([10,10+boardY,8+boardZ+tolerance]) rotate([0,0,180]) cylinder(d=15,h=10);
   }
   for(i = [0:3]) {
      hull() {
        translate([-10,13+14*i,8+boardZ+tolerance]) rotate([0,0,180]) cylinder(d=15,h=10);
        translate([10,13+14*i,8+boardZ+tolerance]) rotate([0,0,180]) cylinder(d=15,h=10);
        translate([40,13+14*i,8+boardZ+tolerance]) rotate([0,0,180]) cylinder(d=3,h=10);
      }
    }
}

color("red") if(mode[2]) {
    translate([        5,        5,-inf/2]) cylinder(d=4, h=inf);
    translate([        5,boardY-5,-inf/2]) cylinder(d=4, h=inf);
    translate([boardX-5,        5,-inf/2]) cylinder(d=4, h=inf);
    translate([boardX-5,boardY-5,-inf/2]) cylinder(d=4, h=inf);
}

color("white") if(mode[3]) {
    translate([9,boardY-5,spaceTop+boardZ-1]) linear_extrude(height = 2) text("0 A 1",size=5, halign="center");
    translate([19,boardY-10,spaceTop+boardZ-1]) linear_extrude(height = 2) text("A",size=5, halign="center");
    translate([26,boardY-10,spaceTop+boardZ-1]) linear_extrude(height = 2) text("1",size=5, halign="center");
}