UC_261_camera_hole_width = 25.8+3.1;
UC_261_camera_hole_height = 25.8+3.1;

use <../LidarCover/Mid360Cover.scad>

// - use 4x DIN912 M3x14 to mount to base
// - use 4x M3x5 heatinsert for camera holes
// - use 4x DIN 7985 Mx8 for camera + spacers (misc/distance.scad)
module UC_261_Mid360_Cover()
{
    difference()
    {
        height = 75;
        union()
        {
            Mid360Cover(1.55);
            translate([0,0,height])
                cylinder(h=10, d=55, $fn=64);
        }
        translate([UC_261_camera_hole_width/2,UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1, $fn=32);
        translate([UC_261_camera_hole_width/2,-UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1, $fn=32);
        translate([-UC_261_camera_hole_width/2,UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1, $fn=32);
        translate([-UC_261_camera_hole_width/2,-UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1, $fn=32);
    }
}
UC_261_Mid360_Cover();