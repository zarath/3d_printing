////////////////////////////////////////////////////////////////////////////
//
// HUBPLUG - Plastic plug to attach the wires to a bicycle hub dynamo
//           This type of plug is used with most hub dynamos. Stripped
//           wires are pushed through the holes od the inner part and then
//           bent around towards outside before the inner part is pushed
//           into the outer shell.
//
// 2013-08-13 by Heinz Spiess 
//            released on Thingyverse under a
//            Creative Commons - Attribution - Share Alike license
// 
////////////////////////////////////////////////////////////////////////////

L2=17;   // overall length of outer shell
L1=13;   // straight length of outer shell
W2=8;   // overall width of outer shell
W1=5.5; // straight width of outer shell
H=9.5;  // height of outer shell
D=1.2;  // Wall thickness
$fn=12;


module OuterShell(){
difference(){
  union(){
    cube([L2,W1,H]);
    hull(){
      translate([0,0,H-D])cube([L2,W1,0.1]);
      translate([-1,0,H-0.1])cube([L2+2,W1,0.1]);
      translate([(L2-L1)/2,W2-0.1,H-D])cube([L1,0.1,0.1]);
     translate([1,W2-0.1,H-0.1])cube([L1+2,0.1,0.1]);
    }
    hull(){
      translate([0,W1-0.1,0])cube([L2,.1,H]);
      translate([(L2-L1)/2,W2-0.1,0])cube([L1,.1,H]);
    }
  }
  translate([D,D,D])cube([L2-2*D,W1-D,H-D+1]);
  hull(){
      translate([D,W1-0.1,D])cube([L2-2*D,.1,H]);
      translate([(L2-L1)/2+0.5*D,W2-D-0.5,D])cube([L1-D,.1,H]);
  }
  translate([1.5*D,1.5*D,-1])cube([L2-3*D,W1-D,H]);
  translate([L2/2-1.5,W1-0.5,-1])cube([3,1.5*D,H]);
  translate([L2/2-2,-1,5.5])cube([4,2*D,2.5]);
  translate([3,W2-0.2,6])cube([3,0.5,0.5]);
  translate([5,W2-0.2,5])cube([1,0.5,0.5]);
  translate([5,W2-0.2,7])cube([1,0.5,0.5]);
  translate([4.7,W2-0.2,5])cube([0.5,0.3,2.5]);
}

    translate([L2/2-D/2,W2-1.9*D,0])cube([D,1.5*D,H]);
}

module Inset(){
  difference(){
     union(){
       hull(){
         translate([-1,0.2,0])cube([L2+2,W1,4]);
         translate([1,W2+0.1,0])cube([L1+2,0.1,4]);
       }
       hull(){
          translate([D+0.2,1.5,4])cube([L2-2*D-0.4,W1-1.7,8]);
          translate([D+(L2-L1)/2,6.3,4])cube([L1-2*D,0.1,8]);
       }
     }
     for(i=[-1,1]) translate([L2/2+i*3,W2/2+0.5,-1])cylinder(r=1.5,h=3);
     for(i=[-1,1]) translate([L2/2+i*3,W2/2+0.5,1.9])cylinder(r1=1.5, r2=0.75,h=1.1);
     for(i=[-1,1]) translate([L2/2+i*3,W2/2+0.5,2.9])cylinder(r=0.75,h=1.3);
     hull(){
          translate([2*D,2*D-0.2,4])cube([L2-4*D,W1-2.9,H]);
          translate([D+(L2-L1)/2,W2-2*D-0.6,4])cube([L1-2*D,0.3,H]);
     }
    translate([L2/2-0.75*D,W2-2.5*D,4])cube([1.5*D,1.5*D,H]);
    for(i=[-1,1]) translate([L2/2-1.2*D/2+3*i,W2-1.6*D,4])cube([1.2*D,1.5*D,H]);
    for(i=[-1,1]) translate([L2/2-D/2+3*i,W2-2.5*D,H+2])cube([D,1.5*D,H]);
    for(i=[-1,1]) translate([L2/2-2*i-0.5,0,4.5])cube([1,2.5*D,5]);
    translate([L2/2-2.5,0,4])cube([5,2.5*D,2]);
  }
  for(i=[-1.1,1.1]) translate([L2/2-D/2+D*i,W2-2.5*D,4])cube([D,0.5*D,H-1.5]);
  translate([L2/2-4,1.5,5.5])cube([8,0.8,0.25]);
  hull(){
    translate([L2/2-1.5,1.5,5.8])cube([3,0.8,0.1]);
    translate([L2/2-1.5,0.9,6.3])cube([3,1.4,0.1]);
    translate([L2/2-1.5,1.5,7.4])cube([3,0.8,0.1]);
  }

}

// Outer shell with inserted inner part - just for visual verification - don't print!
module Both(){
cut_z = -1; // set to z-coordinate where to "cut" - to see inside.
intersection(){
  union(){
    color("red")translate([L2,-0.2,H+4.1])rotate(a=180,v=[0,1,0])Inset();
    translate([0,0,0])OuterShell();
  }
  // intersect with
  translate([-100,-100,cut_z])cube([200,200,100]);
}
}

translate([-20,0,0])OuterShell();

color("red")translate([0,0,0])Inset();

//
%translate([-L2/2,15,0])Both();
