$fn=64;
difference(){
cube([40,69.1,3]);
translate([10,10,-1])
cylinder (d=4.6, h=5);
translate([30,10,-1])
cylinder (d=4.6, h=5);

translate([20,30.6,-1])
cylinder (d=4.6, h=5);
translate([20,50.6,-1])
cylinder (d=4.6, h=5);
translate([-1,20,-1])
cube([11,56,5]);
translate([30,20,-1])
cube([11,56,5]);
}