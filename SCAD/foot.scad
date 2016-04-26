$fn=24;
module chamfercube(){
minkowski(){
minkowski(){
cube([5.5,5.5,5]);
rotate([-90,0,0])
cylinder(d=4.5,h=10);
}
rotate([0,90,0])
cylinder(d=4.5,h=10);
}
}
module ex2020(){
color([1,0,0,1])
translate([7.75,7.75,21.5])
scale([1,1,0.05])
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/SCAD/NFS5-2020-360.stl");
}
module footbase(){
translate([0,0,5]){
difference(){
chamfercube();
translate([-3,-3,-1.5])
cube([22,22,15]);
}
}
}


footbase();
translate([4.9,-2.25,3.47])
cube([5.7,2.2,5.7]);
translate([3.75,-0.4,3.47])
cube([8,2,5.7]);

translate([4.9,15.55,3.47])
cube([5.7,2.2,5.7]);
translate([3.75,13.95,3.47])
cube([8,2,5.7]);

translate([15.55,4.9,3.47])
cube([2.2,5.7,5.7]);
translate([13.95,3.67,3.47])
cube([2,8,5.7]);

//ex2020();