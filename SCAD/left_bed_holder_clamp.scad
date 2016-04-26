$fn=64;
module bedholder(){

import("/mnt/genesis/Documents/STLs/FuseBox1.3_2020/files/Left_Bed_Holder_NEW.stl");
}



module bearing(){
difference(){
cylinder(d=19.8, h=64);
translate([0,0,-1]);{
cylinder(d=15.2, h=65, $fn=24);
}

translate([-0.5,-10,-1]){
	cube([1,10,65]);
}
}
}
translate([3,-37.77,0])

bearing();


/*
color([1])
translate([-7.201,-21.5,22])
cube([20.4,80,20]);
*/

difference(){
translate([0,-0.13,0])
bedholder();

translate([3,-37.77,-1]){
cylinder(d=15.2, h=10);
}
translate([3,-37.77,60]){
cylinder(d=15.2, h=20);
}

}
translate([-6.1,-41.6,0]){
rotate([0,0,49.2]){
cube([2.3,5.15,64]);
}
}
translate([10.6,-39.8,0]){
rotate([0,0,-49.61]){
cube([2.3,5.15,64]);
}
}

