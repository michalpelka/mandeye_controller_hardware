include <constants.scad>
use <raspberry/rpi5_negative.scad>
dimensions_H = 50;

module IdentHole()
{
    hull($fn=16){
        translate([-1.5,0,0])
            cylinder(h=2,d=3);
        translate([1.5,0,0])
            cylinder(h=2,d=3);
    }
}
module Bottom()
{
    difference() {
        // base shape
        cylinder(h=dimensions_H, d=dimensions_D, $fn=128);
        
        // unc heat insert
        translate([0,0,-0.1])
            cylinder(h=UNC_Insert_H+0.2, d= UNC_Insert_D);
        
        // unc heat insert - accessories
        translate([0,35,-0.1])
            cylinder(h=UNC_Insert_H+0.2, d= UNC_Insert_D);
        translate([45,0,-0.1])
            cylinder(h=UNC_Insert_H+0.2, d= UNC_Insert_D);
        translate([-45,0,-0.1])
            cylinder(h=UNC_Insert_H+0.2, d= UNC_Insert_D);
        // raspberry pi
        translate([0,-41,0])
        {
            translate([0,0,UNC_Insert_H-0.1])
            {
                raspberryPiPocket(3);
                raspberryPiWithrecesses();
                raspberryPiHoles(d=3.0, h=UNC_Insert_H+.1, $fn=32);
                raspberryPiHoles(d=6.3, h=6, $fn=6);
            }
            translate([0,0,4])
                raspberryPiHoles(d=5.5, h=10, $fn=32);
        }
        // Holes for LidarPlate
        translate([0,0,dimensions_H+0.1])
            circular_holes(holes_D, M3_Insert_D, M3_Insert_H+4);
        
        // Lip
        translate([0,0,dimensions_H-2+0.01])
            cylinder(h=2, d= lip_dimension_D, $fn=128);
        
        // recesses for screw heads
        translate([0,0,dimensions_H-2+0.01])
        minkowski(){
            cube([30, lip_dimension_D-2,3], true);
            sphere(1);
        }
        
        // ident holes
        translate([-8,0,-0.1])
            IdentHole();
        translate([8,0,-0.1])
            IdentHole();
    }
}
    
Bottom();