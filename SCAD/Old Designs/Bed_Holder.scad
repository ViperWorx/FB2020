$fn=64;
difference(){
cube([45,20,3]);
translate([8,10,-1])
cylinder(d=4.2,h=5);
translate([25,10,-1])
cylinder(d=4.2,h=5);
}
difference(){
cube([45,3,15]);
translate([40,4,11])
rotate([90,0,0])
cylinder(d=3.4,h=5);
}
difference(){
cube([3,20,15]);
translate([-1,2,16])
rotate(a=34, v=[-1,0,0])
cube([5,25,20]);
}


difference(){
translate([30,0,0])
cube([3,20,15]);
translate([29,2,16.05])
rotate(a=34, v=[-1,0,0])
cube([5,25,20]);
}