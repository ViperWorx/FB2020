$fn=64;
module m3nut(){
cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05, h=6, $fn=6);
}
module boltholes(){
	translate([6,15,7.5]){
rotate([90,0,0]){
cylinder(d=3.2, h=30);
}
}
translate([6,11.5,7.5]){
rotate([90,0,0]){
cylinder(d=5.5, h=5);
}
}
translate([6,11.5,7.5]){
rotate([90,0,0]){
cylinder(d=5.5, h=5);
}
}
translate([6,-7,7.5]){
rotate([90,0,0]){
m3nut();
}
}
translate([6,11.5,22.5]){
rotate([90,0,0]){
cylinder(d=5.5, h=5);
}
}

translate([6,15,22.5]){
rotate([90,0,0]){
cylinder(d=3.2, h=30);
}
}
translate([6,-7,22.5]){
rotate([90,0,0]){
m3nut();
}
}
}
difference(){
cylinder(d=20,h=30); 
cylinder(d=5.8,h=60);
	translate([0,0,15]){
	cylinder(d=8.8,h=60);
}
cube([15,1,45]);
boltholes();

}

