$fn=32;
module cutouts(){
translate([0,5.5,-1])
cube([10,10,5]);
translate([13,5.5,-1])
cube([10,10,5]);
translate([26,5.5,-1])
cube([10,10,5]);
translate([39,5.5,-1])
cube([10,10,5]);
translate([52,5.5,-1])
cube([10,10,5]);
translate([65,5.5,-1])
cube([10,10,5]);
translate([78,5.5,-1])
cube([10,10,5]);
translate([91,5.5,-1])
cube([10,10,5]);
translate([104,5.5,-1])
cube([10,10,5]);
translate([117,5.5,-1])
cube([10,10,5]);
}
module bolthole(){
rotate([0,90,0])
cylinder(d=4.4, h=5);

translate([0,0,15])
rotate([0,90,0])
cylinder(d=4.4, h=5);
}

difference(){
cube([147,20,3]);
translate([10,0,0])
cutouts();
}
difference(){
cube([3,20,33]);
translate([-1,10,10])
bolthole();
}
cube([20,3,33]);
difference(){
translate([144,0,0])
cube([3,20,33]);
translate([143,10,10])
bolthole();
}
translate([127,0,0])
cube([20,3,33]);

translate([3,3,0])
cylinder(d=6,h=33);
translate([144,3,0])
cylinder(d=6,h=33);

