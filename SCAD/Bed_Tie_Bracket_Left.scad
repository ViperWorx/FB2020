$fn=64;



module stiffening(){
translate([2.5,2.5,0])
cylinder(d=5, h=35);
translate([0,2.5,2.5])
rotate([0,90,0])
cylinder(d=5, h=26);
translate([2.5,0,2.5])
rotate([-90,0,0])
cylinder(d=5, h=20);
}

difference(){
cube([26,20,3]);
translate([13,10,-1])
cylinder(d=4.4, h=5);
}


difference(){
cube([3,20,35]);
translate([-1,10,10])
rotate([0,90,0])
cylinder(d=4.4, h=5);
translate([-1,10,28])
rotate([0,90,0])
cylinder(d=4.4, h=5);
}
difference(){
cube([26,3,35]);
translate([26,-1,5])
rotate([0,-35,0])
cube([20,5,50]);
}
stiffening();