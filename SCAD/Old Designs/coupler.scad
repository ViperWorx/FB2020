$fn=24;
difference(){
color([1,0,0,1])
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/SCAD/coupler.stl");
translate([7.5,10,-5.95])
rotate([90,0,0])
cylinder(d=4.6, h=20);
translate([22.5,10,-5.35])
rotate([90,0,0])
cylinder(d=4.6, h=20);
translate([7.5,10,-18.65])
rotate([90,0,0])
cylinder(d=4.6, h=20);
translate([22.5,10,-19.15])
rotate([90,0,0])
cylinder(d=4.6, h=20);
}

