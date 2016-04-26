$fn=32;
$epsilon=0.01;
difference(){
translate([-4,0,35])
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/SCAD/rod_clamp_endstop_fixed.stl");
translate([8.6,20,8])
rotate([90,0,0])
cylinder(d=4.4, h=5);

translate([8.552,5.999,0])
cylinder(d=8.4,h=40, $fn=24);
}

difference(){
translate([0.01,5.7,0])
cube([3.2,13.8,18]);
translate([-1,20,13])
rotate(a=52, v=[1,0,0])
cube([7,15,20]);
}
difference(){
translate([0.01,5.7,0])
cube([3.2,8.1,35]);
translate([0,15,31])
rotate([90,0,0])
cylinder(d=5.5,h=10);
}
difference(){
translate([13.91,5.7,0])
cube([3.2,13.8,17.6]);
translate([13.9,20,13])
rotate(a=52, v=[1,0,0])
cube([7,15,20]);
}
difference(){
translate([13.91,5.7,0])
cube([3.2,8.1,35]);
translate([18,15,31])
rotate([90,0,0])
cylinder(d=5.5,h=10);
}
