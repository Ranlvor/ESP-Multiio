 
//TODO: IR-Stuff
//TODO: Abrundung oben weg-option

tolerance = 0.3;
layer_hight = 0.2;
epsilon = 0.001;
inf = 100;

//flat mode: ESP on the top instead of the bottom
flatMode = 1;

transistorHeight = 6;

roundingRadius = 5;
boardX = 75;
boardY = 68;
boardZ = 1.6;
spaceTop = 15;
spaceBottom = flatMode ? transistorHeight : 15;

bottomThickness = 3;
topBottomSplit = flatMode ? 5 : -5;
margin = 5;
cableDiameter = 4+2*tolerance;
washerDiameter = 7+2*tolerance;
washerHeight = 1;
screwHeadHeight = 5;
connectionDiameter = 7;
connectionHeight = (flatMode ? 2 : 5);
cornerOnly = 0;
screwHoleDepth = washerHeight + screwHeadHeight + (flatMode ? 6 : 3);

cutMode = 0;

mode = [
      1, //top normal Mode
      0, //top infill Mode
      0, //top support block Mode
      1, //top text Mode
      1, //bottom normal mode
      0, //bottom infill mode
];
//$fn = 96;
//$fn=10;

module switch() {
 difference() {
  union() {
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
  translate([0,0,9-5-layer_hight]) cylinder(h=layer_hight,d=6+2*tolerance);
 }
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
    translate([-inf/2,-inf/2,topBottomSplit-inf]) cube([inf,inf,inf]);
  }
  translate([0,0,boardZ]) cylinder(d=dia, h=spaceTop-1);
}


module mountingScrewHole() {
    mountingScrewDiameter = 6;
    mountingScewHeadDiameter = 10;
    hull() {
        translate([0,+mountingScewHeadDiameter/2,-inf/2]) cylinder(h=inf, d=mountingScrewDiameter);
        translate([0,-mountingScewHeadDiameter/2,-inf/2]) cylinder(h=inf, d=mountingScrewDiameter);
    }
    translate([0,-mountingScewHeadDiameter/2,-inf/2]) cylinder(h=inf, d=mountingScewHeadDiameter);
}

module model() {
if(mode[0]) {
  difference() {
    union() {
      difference() {
        hull() {
        translate([-margin,        -margin,        boardZ+spaceTop-roundingRadius]) cylinder(h=roundingRadius, r1=roundingRadius, r2=0);
        translate([boardX+margin,-margin,        boardZ+spaceTop-roundingRadius]) cylinder(h=roundingRadius, r1=roundingRadius, r2=0);
        translate([-margin,        boardY+margin,boardZ+spaceTop-roundingRadius]) cylinder(h=roundingRadius, r1=roundingRadius, r2=0);
        translate([boardX+margin,boardY+margin,boardZ+spaceTop-roundingRadius]) cylinder(h=roundingRadius, r1=roundingRadius, r2=0);
      
        //*
        translate([-margin,        -margin,        topBottomSplit]) cylinder(r=roundingRadius);
        translate([boardX+margin,-margin,        topBottomSplit]) cylinder(r=roundingRadius);
        translate([-margin,        boardY+margin,topBottomSplit]) cylinder(r=roundingRadius);
        translate([boardX+margin,boardY+margin,topBottomSplit]) cylinder(r=roundingRadius); // */
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
    translate([52, inf+boardX/2, topBottomSplit]) rotate([90,0,0]) cylinder(d=cableDiameter,h=inf);
    
    
    translate([-washerDiameter/2, -washerDiameter/2,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2*tolerance, h=connectionHeight+tolerance+epsilon);
    translate([washerDiameter/2+boardX,-washerDiameter/2,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2*tolerance, h=connectionHeight+tolerance+epsilon);
    translate([washerDiameter/2+boardX, washerDiameter/2+boardY,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2*tolerance, h=connectionHeight+tolerance+epsilon);
    translate([-washerDiameter/2, washerDiameter/2+boardY,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2*tolerance, h=connectionHeight+tolerance+epsilon);
    
    translate([-washerDiameter/2, -washerDiameter/2,topBottomSplit]) cylinder(d=4, h=boardZ+spaceTop-2-topBottomSplit);
    translate([washerDiameter/2+boardX,-washerDiameter/2,topBottomSplit]) cylinder(d=4, h=boardZ+spaceTop-2-topBottomSplit);
    translate([washerDiameter/2+boardX, washerDiameter/2+boardY,topBottomSplit]) cylinder(d=4, h=boardZ+spaceTop-2-topBottomSplit);
    translate([-washerDiameter/2, washerDiameter/2+boardY,topBottomSplit]) cylinder(d=4, h=boardZ+spaceTop-2-topBottomSplit);
    
    labels();
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
    translate([52, inf+boardX/2, topBottomSplit]) rotate([90,0,0]) cylinder(d=2*cableDiameter,h=inf);
    
      translate([        5,        5,0])  cylinder(d=8, h=inf);
      translate([        5,boardY-5,0])  cylinder(d=8, h=inf);
      translate([boardX-5,        5,0])  cylinder(d=8, h=inf);
      translate([boardX-5,boardY-5,0])  cylinder(d=8, h=inf);
    
        translate([-washerDiameter/2, -washerDiameter/2,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2, h=inf);
    translate([washerDiameter/2+boardX,-washerDiameter/2,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2, h=inf);
    translate([washerDiameter/2+boardX, washerDiameter/2+boardY,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2, h=inf);
    translate([-washerDiameter/2, washerDiameter/2+boardY,topBottomSplit-epsilon]) cylinder(d=connectionDiameter+2, h=inf);
}

color("red") if(mode[2]) {
    translate([        5,        5,-inf/2]) cylinder(d=4, h=inf);
    translate([        5,boardY-5,-inf/2]) cylinder(d=4, h=inf);
    translate([boardX-5,        5,-inf/2]) cylinder(d=4, h=inf);
    translate([boardX-5,boardY-5,-inf/2]) cylinder(d=4, h=inf);
    
    translate([-washerDiameter/2, -washerDiameter/2,-inf/2]) cylinder(d=4, h=inf);
    translate([washerDiameter/2+boardX,-washerDiameter/2,-inf/2]) cylinder(d=4, h=inf);
    translate([washerDiameter/2+boardX, washerDiameter/2+boardY,-inf/2]) cylinder(d=4, h=inf);
    translate([-washerDiameter/2, washerDiameter/2+boardY,-inf/2]) cylinder(d=4, h=inf);
}

module labels() {
    translate([9,boardY-5,spaceTop+boardZ-1]) linear_extrude(height = 1) text("0 A 1",size=5, halign="center");
    translate([19,boardY-10,spaceTop+boardZ-1]) linear_extrude(height = 1) text("A",size=5, halign="center");
    translate([26,boardY-10,spaceTop+boardZ-1]) linear_extrude(height = 1) text("1",size=5, halign="center");
}
color("white") if(mode[3]) {
    labels();
}

module bottomMountingScrew() {
    cylinder(d=washerDiameter,h=inf);
    translate([0,0,inf/2]) cylinder(d=4,h=inf);
    
}
color("blue") if (mode[4]) {
    difference() {
      union() {
      hull() {
          translate([-margin,        -margin,        topBottomSplit-1]) cylinder(r=roundingRadius,h=1);
          translate([boardX+margin,-margin,        topBottomSplit-1]) cylinder(r=roundingRadius,h=1);
          translate([-margin,        boardY+margin,topBottomSplit-1]) cylinder(r=roundingRadius,h=1);
          translate([boardX+margin,boardY+margin,topBottomSplit-1]) cylinder(r=roundingRadius,h=1);
          
          translate([-margin,        -margin,        -spaceBottom-bottomThickness]) cylinder(r=roundingRadius,h=1);
          translate([boardX+margin,-margin,        -spaceBottom-bottomThickness]) cylinder(r=roundingRadius,h=1);
          translate([-margin,        boardY+margin,-spaceBottom-bottomThickness]) cylinder(r=roundingRadius,h=1);
          translate([boardX+margin,boardY+margin,-spaceBottom-bottomThickness]) cylinder(r=roundingRadius,h=1);
      }
      translate([-washerDiameter/2, -washerDiameter/2,topBottomSplit]) cylinder(d=connectionDiameter-2*tolerance, h=connectionHeight-tolerance);
      translate([washerDiameter/2+boardX,-washerDiameter/2,topBottomSplit]) cylinder(d=connectionDiameter-2*tolerance, h=connectionHeight-tolerance);
      translate([washerDiameter/2+boardX, washerDiameter/2+boardY,topBottomSplit]) cylinder(d=connectionDiameter-2*tolerance, h=connectionHeight-tolerance);
      translate([-washerDiameter/2, washerDiameter/2+boardY,topBottomSplit]) cylinder(d=connectionDiameter-2*tolerance, h=connectionHeight-tolerance);
      }
      translate([-tolerance,-tolerance,-spaceBottom]) cube([boardX+2*tolerance, boardY+2*tolerance, inf]);
      if(flatMode == 1) {
          translate([5*boardX/16,7*boardY/8,0]) mountingScrewHole();
          translate([11*boardX/16,7*boardY/8,0]) mountingScrewHole();
      } else {
          translate([  boardX/4,3*boardY/4,0]) mountingScrewHole();
          translate([3*boardX/4,3*boardY/4,0]) mountingScrewHole();
      }
      translate([52, inf+boardX/2, topBottomSplit]) rotate([90,0,0]) cylinder(d=cableDiameter,h=inf);
      
      translate([-washerDiameter/2, -washerDiameter/2,-spaceBottom-inf-bottomThickness+screwHoleDepth]) bottomMountingScrew();
      translate([washerDiameter/2+boardX, -washerDiameter/2,-spaceBottom-inf-bottomThickness+screwHoleDepth]) bottomMountingScrew();
      translate([washerDiameter/2+boardX, washerDiameter/2+boardY,-spaceBottom-inf-bottomThickness+screwHoleDepth]) bottomMountingScrew();
      translate([-washerDiameter/2, washerDiameter/2+boardY,-spaceBottom-inf-bottomThickness+screwHoleDepth]) bottomMountingScrew();
      
      //space for transistor
      if(flatMode) {
          translate([60.67, 45.72, -spaceBottom-bottomThickness+1]) translate([-5,-5,0]) cube([10,10,10]);
      }
  }
}

color("green") if (mode[5]) {
      translate([-washerDiameter/2, -washerDiameter/2,-inf/2]) cylinder(d=washerDiameter+5.4,h=inf);
      translate([washerDiameter/2+boardX, -washerDiameter/2,-inf/2]) cylinder(d=washerDiameter+5.4,h=inf);
      translate([washerDiameter/2+boardX, washerDiameter/2+boardY,-inf/2]) cylinder(d=washerDiameter+5.4,h=inf);
      translate([-washerDiameter/2, washerDiameter/2+boardY,-inf/2]) cylinder(d=washerDiameter+5.4,h=inf);
      translate([  boardX/4,3*boardY/4,0]) translate([0,+12/2,-inf/2]) cylinder(h=inf, d=12);
      translate([3*boardX/4,3*boardY/4,0]) translate([0,+12/2,-inf/2]) cylinder(h=inf, d=12);
      translate([52, inf+boardX/2, topBottomSplit]) rotate([90,0,0]) cylinder(d=2*cableDiameter,h=inf);
}
}

if(cornerOnly) {
    intersection() { 
        model();
        translate([-inf+2, -inf+2, -inf/2]) cube([inf,inf,inf]);
    }
} else {
    if(cutMode == 0) {
      model();
    } else if(cutMode == 1) {
      rotate([0,0,-90]) projection(cut = true) translate([0,-boardY/2,washerDiameter/2]) rotate([0,-90,0]) model();
    } else if(cutMode == 2) {
      rotate([0,0,-90]) projection(cut = true) translate([0,-boardY/2,-5]) rotate([0,-90,0]) model();
    } else if(cutMode == 3) {
      rotate([0,0,-90]) projection(cut = true) translate([0,-boardY/2,-9]) rotate([0,-90,0]) model();
    }
}
