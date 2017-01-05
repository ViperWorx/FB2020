$fn=64;
module m8nut(){
//cylinder(r = 14 / 2 / cos(180 / 6) + 0.05, h=7, $fn=6);
cylinder(d=14.6,h=8,$fn=6);
}
module bar(){
difference(){
translate([-10,-57.5,0])
cube([20,115,3]);
translate([0,0,-1])
cylinder(h=30, d=8.4);

translate([0,-47.5,-1])
cylinder(h=5, d=4.4);
	translate([0,47.5,-1])
cylinder(h=5, d=4.4);
m8nut();
}
}
module clamp(){
difference(){
cylinder(h=25, d1=75, d2=30);
translate([0,0,-1])
cylinder(h=50, d=8.4);

m8nut();
}
}
bar();
clamp();