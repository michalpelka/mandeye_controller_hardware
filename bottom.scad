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
        
        // raspberry pi
        translate([0,-41,UNC_Insert_H-0.1])
        {
            raspberyPiPocket(3);
            raspberyPiWithReses();
            raspberyPiHoles(d=3.0, h=8);
        }
        
        // Holes for LidarPlate
        translate([0,0,dimensions_H+0.1])
            circular_holes(holes_D, M3_Insert_D, M3_Insert_H+2);
        
        // Lip
        translate([0,0,dimensions_H-2+0.01])
            cylinder(h=2, d= lip_dimension_D, $fn=128);
    }
}

Bottom();

