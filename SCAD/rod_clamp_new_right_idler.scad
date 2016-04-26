difference(){
translate([0,0,35])
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/rod_clamp_extended.stl");
translate([8.552,5.999,0])
cylinder(d=8.4,h=40, $fn=24);
}
difference(){
translate([0.01,5.7,0])
cube([3.2,13.8,18]);
translate([-5,20,18.2])
rotate([34,0,0])
cube([10,10,30]);
}
difference(){
translate([13.91,5.7,0])
cube([3.2,13.8,35]);
translate([12,20,18.2])
rotate([34,0,0])
cube([10,10,30]);
}

