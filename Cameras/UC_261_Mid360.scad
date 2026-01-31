UC_261_camera_hole_width = 25.8+3.1;
UC_261_camera_hole_height = 25.8+3.1;

use <../LidarCover/Mid360Cover.scad>

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