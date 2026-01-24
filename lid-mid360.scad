include <constants.scad>
use<muRata/SCH16XXdev.scad>

// mounting holes for Livox Mid 360
mid360_x = 36.0;
mid360_y = 48.0;


module LidMid360()
{
    difference()
    {
        union()
        {
            cylinder(h=4, d=dimensions_D, $fn=128);
            translate([0,0,-1])
                cylinder(h=2, d=lip_dimension_D, $fn=128);
        }
        translate([0,0,10])
            circular_holes(holes_D, 3.1, 10);
        
        
        // mount for Mid360
        translate([mid360_x/2,mid360_y/2,-10])
            cylinder(h=20,d=3.2, $fn=32);
        translate([-mid360_x/2,mid360_y/2,-10])
            cylinder(h=20,d=3.2, $fn=32);
        translate([mid360_x/2,-mid360_y/2,-10])
            cylinder(h=20,d=3.2, $fn=32);
        translate([-mid360_x/2,-mid360_y/2,-10])
            cylinder(h=20,d=3.2, $fn=32);
        
        // mount for front camera
        translate([0,40,0])
        {
            translate([10,0,-2])
                    cylinder(10, d = 3.2, $fn=32);
            translate([-10,0,-2])
                    cylinder(10, d = 3.2, $fn=32);
        }
        
        // mount for muRata
        translate([0,0,-3])
            muRataDevBoadHoles(4);
    }
}
LidMid360();