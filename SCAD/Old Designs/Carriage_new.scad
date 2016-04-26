$fn=64;
//include  E3D library
use<e3d_v6.scad>
//use</home/ax/Dropbox/SCAD/e3d_v6.scad>
//orientate hot end
module e3dv6(){
translate([21.5,24,0])
	rotate([180,0,0])
e3d();
}

//nut trap modules
module m3nut(){
cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05, h=3, $fn=6);
}
module m3nut2(){
cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05, h=6, $fn=6);
}
//holes for the bolts.. duh.. 
module boltholes(){
translate([13,37,-10])
rotate([90,0,0])
cylinder(d=3.2, h=30);
translate([30,37,-10])
rotate([90,0,0])
cylinder(d=3.2, h=30);
}

//belt clip module
module beltclip(){
difference(){

translate([-1.85,0,0])    
cube([7,11,8.5]);

translate([2.2,-1,1])
cube([1.1,12,11]);
translate([-5,11,0])
rotate([20.6,0,0])
cube([12,5,9]);
}
translate([3.4,1.5,0])
cylinder(d=1, h=8.5);

translate([3.4,3.5,0])
cylinder(d=1, h=8.5);

translate([3.4,5.5,0])
cylinder(d=1, h=8.5);

translate([3.4,7.5,0])
cylinder(d=1, h=8.5);
}

//belt clip module
module beltclip2(){
difference(){

translate([-1.85,0,0])    
cube([7,11,8.5]);

translate([2.2,-1,1])
cube([1.1,12,11]);
translate([-5,11,0])
rotate([20.6,0,0])
cube([12,5,9]);
}
translate([2.1,1.5,0])
cylinder(d=1, h=8.5);

translate([2.1,3.5,0])
cylinder(d=1, h=8.5);

translate([2.1,5.5,0])
cylinder(d=1, h=8.5);

translate([2.1,7.5,0])
cylinder(d=1, h=8.5);
}

//left bearing tube
module bearing(){
difference(){
cylinder(d=19.8, h=48);
translate([0,0,-1])
cylinder(d=15.2, h=50);
translate([-4,4,-1])
rotate([0,0,37])
	cube([1,10,50]);
translate([9,38,2.5])
cube([20,12,7]);
}
}

//right bearing tube
module bearingtube(){
bearing();
translate([43.25,0,0])
mirror([1,0,0])
	bearing();
}

//main carriage
module basecarriage(){
rotate([-90,0,0])
bearingtube();

//central join
difference(){
	translate([7.6,0,-2.5])
cube([28,48,5]);

//endstop screw holes
translate([18,43.5,-3])
cylinder(d=2,h=15);
translate([24.5,43.5,-3])
cylinder(d=2,h=15);

//hole for hot end
hull(){
translate([21.5,24,-5])
cylinder(d=16,h=10);
translate([21.5,16.2,-5])
cylinder(d=17.5,h=10);
}
}

//hot end clamp on carriage
difference(){
translate([-3,24,-14.5])
cube([50,12,12]);

//stop clamp interfering with bearing holes
translate([0,0,-1])
	rotate([-90,0,0])
cylinder(d=15.2, h=50);
	
//hot end cut out
translate([43.25,0])
rotate([-90,0,0])
cylinder(d=15.2, h=50);
	
e3dv6();

//smooth off clamp
translate([-9,53,-17.1])
rotate([90,0,90])
cylinder(h=60,d=45);

translate([-10,32,-18])
rotate([55,0,0])
cube([70,10,5]);

//bolt holes through clamp on carriage
boltholes();

//nut trap/bolt head hole
translate([30,36.5,-10])
rotate([90,0,0])
cylinder(d=6, h=7.5);

translate([13,36.5,-10])
rotate([90,0,0])
m3nut2();
}


//reinforce top of carriage
difference(){
translate([10,0,2.5])
rotate([-90,0,0])
cylinder(d=3, h=48);


}
translate([34,0,2.5])
rotate([-90,0,0])
cylinder(d=3, h=48);
}
//top belt clips
module topclip(){
translate([9.5,0,1])
beltclip2();

translate([33.8,48,1])
rotate([0,0,180])
	beltclip();
}

//lower belt clip
module clips(){
topclip();
translate([43.35,0,0])
//mirror([0,1,0])
rotate([180,0,180])
topclip();
}

//combine clips and carraige
module carriage(){
clips();
basecarriage();
}

//hot end clamp
module clamp(){
difference(){
translate([9.8,13.95,-14.5])
cube([24,10,9.5]);

//hot end cut out
e3dv6();
//bolt holes through clamp
boltholes();
//nut trap/bolt head hole
translate([30,16.5,-10])
rotate([90,0,0])
m3nut();

translate([13,16.5,-10])
rotate([90,0,0])
cylinder(d=6, h=3);
}
}

//clamp();
carriage();

//beltclip2();