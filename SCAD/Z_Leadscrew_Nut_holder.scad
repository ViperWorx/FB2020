$fn=64;
module original(){
import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/SCAD/Z_Leadscrew_Nut_holder.stl");


}

difference(){
original();
translate([15,17.5,-1])
cylinder(d=12,h=5);
}
