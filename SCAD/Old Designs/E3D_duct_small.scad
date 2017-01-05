$fn=64;
use<e3d_v6.scad>;
extrad= 0.2;
//nut trap module
module m3nut(){
cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05, h=3, $fn=6);
}
module fan(){
difference(){
color([1,0,0,1])
translate([15,-15,0])
cube([7.5,30,30]);
translate([14.8,12,3])
rotate([0,90,0])
cylinder(d=3+extrad,h=8);
translate([14.8,-12,3])
rotate([0,90,0])
cylinder(d=3+extrad,h=8);
translate([14.8,12,27])
rotate([0,90,0])
cylinder(d=3+extrad,h=8);
translate([14.8,-12,27])
rotate([0,90,0])
cylinder(d=3+extrad,h=8);
translate([14.9,0,15.25])
rotate([0,90,0])
cylinder(d=28,h=9);
}
}

difference(){

translate([0,-23,2]){
minkowski(){
translate([-16,10,0])
rotate([0,90,0])
cylinder(d=4,h=15);
cube([16,26,26]);
}
}

cylinder(d=22.5,h=31);


translate([-6,0,15])
rotate([0,90,0])
cylinder(d=28,h=25);


translate([0,12,3])
rotate([0,90,0])
cylinder(d=3+extrad,h=16.5);
translate([0,-12,3])
rotate([0,90,0])
cylinder(d=3+extrad,h=16.5);
translate([0,12,27])
rotate([0,90,0])
cylinder(d=3+extrad,h=16.5);
translate([0,-12,27])
rotate([0,90,0])
cylinder(d=3+extrad,h=16.5);

translate([-16.1,-9,-1])
cube([15,18,32]);


translate([-12.5,17,5])
rotate([90,0,0])
cylinder(d=3+extrad,h=34);

translate([-12.5,17,25])
rotate([90,0,0])
cylinder(d=3+extrad,h=34);

translate([-12.5,-12.05,25])
rotate([90,0,0])
cylinder(d=5.5+extrad,h=3.5);

translate([-12.5,-12.05,5])
rotate([90,0,0])
cylinder(d=5.5+extrad,h=3.5);


translate([-12.5,15.05,5])
rotate([90,0,0])
m3nut();
translate([-12.5,15.05,25])
rotate([90,0,0])
m3nut();
}

difference(){
translate([-1,-10,15]){
hull(){
translate([-2.5,0,-2])
cube([7,0.5,16.5]);
translate([-2.5,-9,11.2])
rotate([0,90,0])
cylinder(d=7.2,h=7);
}
}
cylinder(d=22.5,h=34);
translate([-6,0,15])
rotate([0,90,0])
cylinder(d=28,h=25);
translate([0,-12,27])
rotate([0,90,0])
cylinder(d=3+extrad,h=16.5);


translate([-9,-19.5,26.5])
rotate([0,90,0])
cylinder(d=3+extrad,h=16.5);
}

color([0,0.5,1,1])
translate([0,0,46])
rotate([0,180,0])
e3d();

translate([-24,-100,-57])
rotate([90,0,90])
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/1_Carriage.stl");

color([0,1,0,1])
translate([0,-46.5,-6.5])
rotate([0,-134.5,-90])
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/FanductOvalE3dv6.stl");

//fan();