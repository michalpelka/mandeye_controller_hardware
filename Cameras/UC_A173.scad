UAC_A173_camera_dim_width = 30;
UAC_A173_camera_dim_height = 30;
UAC_A173_camera_hole_width = 21.1;
UAC_A173_camera_hole_height = 12.5;
UAC_A173_camera_center_x = 5;
UAC_A173_camera_hole_dim = 2.5;
UAC_A173_camera_hole_nipple_h = 1.5;
UAC_A173_camera_hole_nipple_d = UAC_A173_camera_hole_dim + 1;
UAC_A173_mount_hegiht = 13;
UAC_A173_ribbon = 14;

include <CameraMount.scad>
module UAC_A173_Camera()
{
    difference()
    {
        union()
        {
            Camera(
            UAC_A173_camera_dim_width,
            UAC_A173_camera_dim_height,
            UAC_A173_camera_hole_dim,
            UAC_A173_mount_hegiht,
            UAC_A173_ribbon);
            
            // niples
            CameraHoles(UAC_A173_camera_hole_width, UAC_A173_camera_hole_height, UAC_A173_camera_center_x, d=UAC_A173_camera_hole_nipple_d, h=UAC_A173_camera_hole_nipple_h);
        }
        // holes
        translate([0,0,-50])
            CameraHoles(UAC_A173_camera_hole_width, UAC_A173_camera_hole_height, UAC_A173_camera_center_x, h=100, d=camera_hole_dim);
        
        // bottom holes 
        translate([0,0,-UAC_A173_mount_hegiht-0.01])
            CameraHoles(UAC_A173_camera_hole_width, UAC_A173_camera_hole_height, UAC_A173_camera_center_x, d=3.5, h=3);
    }
}


UAC_A173_Camera();