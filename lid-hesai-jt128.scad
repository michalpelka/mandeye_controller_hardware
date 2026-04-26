include <constants.scad>
use<muRata/SCH16XXdev.scad>

// mounting holes for Livox Mid 360
hesai_jt128_mount_phi = 56;

module LidJT128()
{
    

                
    difference()
    {
        union()
        {
            cylinder(h=4, d=dimensions_D, $fn=128);
            //translate([0,0,-1])
            //    cylinder(h=2, d=lip_dimension_D, $fn=128);
        }
        translate([0,0,10])
            circular_holes(holes_D, 3.1, 10);
        // reses 
        // holes for jt128
        for (b = [0,90,])
            rotate([0,0,b])
                for (a = [30,155,280])
                    rotate([0,0,a])
                        translate([hesai_jt128_mount_phi/2,0,-10])
                            cylinder(h=20, d=3.5, $fn=32);
                
        translate([0,0,3])
            cylinder(h=3, d=63.5, $fn=128);
        // mount for front camera
        translate([0,40,0])
        {
            translate([10,0,-2])
                    cylinder(10, d = 3.2, $fn=32);
            translate([-10,0,-2])
                    cylinder(10, d = 3.2, $fn=32);
        }
       translate([0,-40,0])
        {
            translate([10,0,-2])
                    cylinder(10, d = 3.2, $fn=32);
            translate([-10,0,-2])
                    cylinder(10, d = 3.2, $fn=32);
        }
        // mount for muRata
        translate([0,0,-3])
            muRataDevBoadHoles(4);
                // mount for muRata
        rotate([0,0,90])
        translate([0,0,-3])
            muRataDevBoadHoles(4);
    }
}
LidJT128();