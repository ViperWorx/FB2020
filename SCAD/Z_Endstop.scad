$fn=64;

module slots(){
hull(){
translate([4,5,-0.5])
cylinder(d=4.6, h=4);
translate([5,40,-0.5])
cylinder(d=4.6, h=4);
}
hull(){
translate([20,5,-0.5])
cylinder(d=4.6, h=4);
translate([20,40,-0.5])
cylinder(d=4.6, h=4);
}
}
module switchholes(){
translate([0,0,-1])
cylinder(d=2.4,h=5);
translate([6.5,0,-1])
cylinder(d=2.4,h=5);
}

difference(){
cube([25,75,3]);
slots();



translate([3,46,-1])
cube([7.5,20,5]);
translate([14.5,46,-1])
cube([7.5,20,5]);
translate([9.3,71,0])
switchholes();
}