$fn=64;
module ramps(){
translate([1.5,-7.5,0])
rotate([180,0,0])
color([0,1,0,1])
import("/mnt/genesis/Documents/STLs/FuseBox1.3_2020/files/SCAD/RAMPS1_4.stl");
}

module e2020(){
translate([50,-32,-10])
rotate([90,0,90])
import("/mnt/genesis/Documents/STLs/FuseBox1.3_2020/files/SCAD/NFS5-2020-360.stl");
}

difference(){
translate([-44,-42,0])
cube([10,80,3]);
translate([-38,-18,-20])
cylinder(d=3.6,h=50);
translate([-39,30.5,-20])
cylinder(d=3.6,h=50);
translate([-38,-32,-10])
cylinder(d=4.6,h=50);
}
difference(){
translate([-39,30.5,-2.8])
cylinder(d=7, h=3);
translate([-39,30.5,-20])
cylinder(d=3.6,h=50);
}

difference(){
translate([-38,-18,-2.8])
cylinder(d=7, h=3);
translate([-38,-18,-20])
cylinder(d=3.6,h=50);
}
difference(){
translate([43.5,30.4,-2.8])
cylinder(d=7, h=3);
translate([43.5,30.4,-20])
cylinder(d=3.6,h=50);
}
translate([43.5,-18,-2.8])
cylinder(d=7, h=3);

difference(){
translate([38,-42,0])
cube([10,80,3]);
translate([43.5,30.4,-20])
cylinder(d=3.6,h=50);
translate([42,-32,-10])
cylinder(d=4.6,h=50);
}

difference(){
translate([38,-42,0])
rotate([0,0,47.3185])
cube([10,107.163,3]);
translate([-39,30.5,-20])
cylinder(d=3.6,h=50);
translate([42,-32,-10])
cylinder(d=4.6,h=50);
}

difference(){
translate([-40.8,-34.65,0])
rotate([0,0,-47.3185])
cube([10,107.163,3]);
translate([43.5,30.4,-20])
cylinder(d=3.6,h=50);
translate([-38,-32,-10])
cylinder(d=4.6,h=50);
}





//e2020();
//ramps();