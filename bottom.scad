include <constants.scad>
use <raspberry/rpi5_negative.scad>

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
        translate([0,-41,UNC_Insert_H-0.1])
        {
            raspberryPiPocket(3);
            raspberryPiWithrecesses();
            raspberryPiHoles(d=3.0, h=8);
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

    }
}
    
      
Bottom();

