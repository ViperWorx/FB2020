/*

Name: FB2020 Left Carrier
Author: Ax Smith-Laffin - AxMod Box Mods Limited (https://www.axmod.co.uk) /Sledz UK (https://www.sledz-uk.co.uk)

License: GNU GPL
License URL: http://www.gnu.org/licenses/gpl-2.0.html

*/

//smooth cylinders
$fn=64;

//add extra diameter to holes - use if your printer prints on the tight side
extradiameter=0.4;

//add extra width to the slot in the belt clips - use if you find the belt is very difficult to fit
extrawidth=0.2;

//E3D Collar
module e3dv6(){
translate([22,26.5,-14.8]){
cylinder(d=16+extradiameter,h=3);
translate([0,0,3]) cylinder(d=12+extradiameter,h=5.9);
translate([0,0,8.5]) cylinder(d=16+extradiameter,h=3.8);
}
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
translate([13.5,39.5,-9])
rotate([90,0,0])
cylinder(d=3+extradiameter, h=30);
translate([30.5,39.5,-9])
rotate([90,0,0])
cylinder(d=3+extradiameter, h=30);
}

//belt clip module
module bcinner(){
difference(){

translate([-1.85,0,0])    
cube([7+extrawidth,11,8.5]);

translate([2.2,-1,1])
cube([1.1+extrawidth,12,11]);
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
cylinder(d=19.8, h=53);
translate([0,0,-1])
cylinder(d=15.2, h=55);
translate([-4,4,-1])
rotate([0,0,37])
	cube([1,10,55]);
translate([9,38,7.5])
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

//hotend hole in carriage
module hotendcut(){
hull(){
translate([22,26.5,-5])
cylinder(d=16+extradiameter,h=10);
translate([22,16.5,-5])
cylinder(d=18,h=15);
}
}


//main carriage
module basecarriage(){
rotate([-90,0,0])
bearingtube();

//central join
difference(){
	translate([7.6,0,-2.5])
cube([28,53,5]);

//endstop screw holes
translate([18,48.5,-3])
cylinder(d=2+extradiameter,h=15);
translate([24.5,48.5,-3])
cylinder(d=2+extradiameter,h=15);

//hole for hot end
hotendcut();
}


//hot end clamp on carriage
difference(){
translate([6.78,26.5,-8.5]){
minkowski(){
cube([30,7.5,1]);
rotate([-90,0,0])
cylinder(d=10, h=1);
}
}

//stop clamp interfering with bearing holes
translate([0,0,-1])
	rotate([-90,0,0])
cylinder(d=15.2, h=50);
	
//hot end cut out
translate([43.25,0])
rotate([-90,0,0])
cylinder(d=15.2, h=50);
	
e3dv6();

//bolt holes through clamp on carriage
boltholes();

//nut trap/bolt head hole
translate([30.5,39,-9])
rotate([90,0,0])
cylinder(d=6+extradiameter, h=7.5);

translate([13.5,39,-9])
rotate([90,0,0])
m3nut2();
}


//reinforce top of carriage
difference(){
translate([10,0,2.5])
rotate([-90,0,0])
cylinder(d=3, h=53);


}
translate([34,0,2.5])
rotate([-90,0,0])
cylinder(d=3, h=53);
}

//top belt clips - change bcinner to bcouter to reverse where clamp notches are.
module topclip(){

translate([9.5,0,1])
bcinner();

translate([33.8,53,1])
rotate([0,0,180])
	bcinner();
}

//lower belt clip
module clips(){
difference(){
topclip();
hotendcut();
}

difference(){
translate([43.35,0,0])
rotate([180,0,180])
topclip();
translate([0,0,-5])
hotendcut();
}
}

//combine clips and carriage
module carriage(){
clips();
basecarriage();
}

//hot end clamp
module clamp(){
difference(){
translate([10,16.45,-13.5])
cube([24,10,10]);

//hot end cut out
e3dv6();
//bolt holes through clamp
boltholes();
//nut trap/bolt head hole
translate([30.5,19,-9])
rotate([90,0,0])
m3nut();

translate([13.5,19,-9])
rotate([90,0,0])
cylinder(d=6+extradiameter, h=3);
}
}

clamp();
carriage();
