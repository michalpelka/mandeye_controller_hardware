UC_261_camera_hole_width = 25.8+3.1;
UC_261_camera_hole_height = 25.8+3.1;

use <../LidarCover/Mid360Cover.scad>

module UC_261_Mid360_Cover()
{
    difference()
    {
        height = 65;
        union()
        {
            Mid360Cover(1.39);
            translate([0,0,height])
                cylinder(h=8, d=55);
        }
        translate([UC_261_camera_hole_width/2,UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1);
        translate([UC_261_camera_hole_width/2,-UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1);
        translate([-UC_261_camera_hole_width/2,UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1);
        translate([-UC_261_camera_hole_width/2,-UC_261_camera_hole_height/2,height])
            cylinder(100, d=4.1);
    }
}
UC_261_Mid360_Cover();
