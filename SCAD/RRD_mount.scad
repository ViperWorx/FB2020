$fn=24;
module blanked(){
translate([0,7,2.5])
cube([5,6,6]);
translate([25,7,2.5])
cube([5,6,6]);
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/SCAD/Mounting_Bracket_60_deg.STL");
}
difference(){
blanked();
translate([-5,10,5])
rotate([0,90,0])
cylinder(d=4.4, h=40);
}