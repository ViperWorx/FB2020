/*

//Name: FB2020 Left Carrier
Author: Ax Smith-Laffin - AxMod Box Mods Limited (https://www.axmod.co.uk) /Sledz UK (https://www.sledz-uk.co.uk)

License: GNU GPL
License URL: http://www.gnu.org/licenses/gpl-2.0.html

*/

$fn=64;

//Extra diameter for rod holes
//extradiameter = 0.4;

//Rail Module
module rails(){
translate([0,-10,0]){
rotate([-90,0,0])
cylinder(d=8+extradiameter,h=300);
translate([43.25,0,0])
rotate([-90,0,0])
cylinder(d=8+extradiameter,h=300);
}
}

//LM8LUU Clamp
module lm8luu(){
translate([-2.5,10.1,-19]){
rotate([0,90,0]){
difference(){
cylinder(d=19.8, h=48);
translate([0,0,-1]){
cylinder(d=15.1, h=50);
}
cube([10,1,50]);
translate([21.75,0,-17]){
    cylinder(d=5.5,h=15);
}
}
}
}
}

//525ZZ Bearings
module bearing525(){
difference(){
cylinder(d=16,h=5);
translate([0,0,-1])
cylinder(d=5,h=7);
}
}

// Place 525 Bearings
module bearings(){
translate([21.75,0,3.5])
bearing525();
translate([21.75,0,-8.5])
bearing525();
}

//Rail Connectors
module rail_ends(){
difference(){
translate([0,-3,0])
rotate([-90,0,0])
cylinder(d=12.4,h=23);
rails();
}
difference(){
translate([43.25,-3,0])
rotate([-90,0,0])
cylinder(d=12.4,h=23);
 rails();
}
}

//Centre Block
module connectorblock(){
difference(){
translate([-2.5,7.95,-20])
cube([48,12.05,32]);
translate([-2.6,10.1,-19])
    rotate([0,90,0])
    cylinder(d=15.1, h=50);
rails();

translate([-2.5,20.2,-22])
rotate([45,0,0])
cube([48,2,2]);
}
    difference(){
translate([-2.5,0.25,-20])

cube([48,8,23]);
    translate([-2.6,10.1,-19])
    rotate([0,90,0])
    cylinder(d=15.1, h=50);
rails();
translate([21.75,0,-18])
    cylinder(d=5.5,h=30);

}
}

//625 Bearing Clamp
module clamp625(){
difference(){
hull(){
translate([-8,0,0])
cube([16,21,4]);
cylinder(d=16,h=4);
}
translate([0,1,-1])
cylinder(d=5.2,h=5);
}
difference(){
translate([0,1,-0.7])
cylinder(d=8.5,h=1.5);
translate([0,1,-1])
cylinder(d=5.2,h=5);
}
}

//Bearing clamps positioned
module bearingclamps625(){
difference(){
    translate([21.75,-1,9.5])   
clamp625();
translate([21.75,0,11])
    cylinder(d=9,h=4);
}
    difference(){
rotate([0,180,0])
translate([-21.75,-1,9])
clamp625();
translate([-2.5,10.1,-19])
rotate([0,90,0])
cylinder(d=15.1, h=50);
}
translate([21.75,-1,-2.5])
clamp625();
rotate([0,180,0])
translate([-21.75,-1,-3])
clamp625();
}

//Cut the hell out of the connector to let belts through and reduce plastic use
module cut_connector(){
difference(){
connectorblock();
translate([-2.6,7,3])
cube([17.6,18,20]);
translate([28.5,7,3])
cube([17.6,18,20]);
bearings();
translate([18,7,3])
cube([7,18,6.5]);
translate([5,-2,-9])
cube([10,30,8]);
translate([28.5,-2,-9])
cube([10,30,8]);
translate([18,7,-9])
cube([7,18,8]);
translate([14,0,-9])
cube([15,8,8]);
}
}

//In-built support for clamp
module support(){
translate([-2,10.1,-29])
cube([0.5,1,2.7]);
translate([5,10.1,-29])
cube([0.5,1,2.7]);
translate([15,10.1,-29])
cube([0.5,1,2.7]);
translate([25,10.1,-29])
cube([0.5,1,2.7]);
translate([35,10.1,-29])
cube([0.5,1,2.7]);
translate([44,10.1,-29])
cube([0.5,1,2.7]);
}

support();
cut_connector();
lm8luu();
rail_ends();
bearingclamps625();
//bearings();
