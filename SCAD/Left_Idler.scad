import("/mnt/genesis/Dropbox/STLs/FuseBox1.3_2020/files/SCAD/1_Left_Idler_Corner_Culain.stl");
translate([-18,6.5,2])
cube([20,5,5]);
translate([-18,9,7])
rotate([0,90,0])
cylinder(d=5,h=20, $fn=32);