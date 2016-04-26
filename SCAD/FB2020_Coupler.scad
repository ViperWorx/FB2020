/*

Name: FB2020 Rigid Coupler
Author: Ax Smith-Laffin - AxMod Box Mods Limited (https://www.axmod.co.uk) / Sledz UK (https://www.sledz-uk.co.uk)

License: GNU GPL
License URL: http://www.gnu.org/licenses/gpl-2.0.html

*/

//Smooth Cylinders
$fn=64;

//add extra diameter to holes - use if your printer prints on the tight si
extradiameter=0.4;

//nut trap modules
module m3nut(){
cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05 +extradiameter, h=3, $fn=6);
}

//Body
difference(){
minkowski(){
cube([23,22,4]);
cylinder(d=5, h=4);
}

//Lead screw Notch
translate([-4.5,11,-0.5])
rotate([0,90,0])
cylinder(d=8,h=16);

//Stepper Notcj
translate([14,11,-0.5])
rotate([0,90,0])
cylinder(d=5,h=12);

//bolt holes
translate([5,2.5,-2])
cylinder(d=3+extradiameter,h=12);
translate([5,19.5,-2])
cylinder(d=3+extradiameter,h=12);

translate([19.5,4,-2])
cylinder(d=3+extradiameter,h=12);
translate([19.5,18,-2])
cylinder(d=3+extradiameter,h=12);

//nut traps
translate([19.5,18,5])
m3nut();
translate([5,2.5,5])
m3nut();

//Bolt head recess
translate([19.5,4,5])
cylinder(d=6+extradiameter,h=3);
translate([5,19.5,5])
cylinder(d=6+extradiameter,h=3);
}