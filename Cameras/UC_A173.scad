UAC_A173_camera_dim_width = 30;
UAC_A173_camera_dim_height = 30;
UAC_A173_camera_hole_width = 21.1;
UAC_A173_camera_hole_height = 12.5;
UAC_A173_camera_center_x = 5;
UAC_A173_camera_hole_dim = 2.0;
UAC_A173_camera_hole_nipple_h = 0;
UAC_A173_camera_hole_nipple_d = UAC_A173_camera_hole_dim + 2;
UAC_A173_mount_hegiht = 14;
UAC_A173_ribbon = 14;

include <CameraMount.scad>
module UAC_A173_Camera()
{
    Camera(
    UAC_A173_camera_dim_width,
    UAC_A173_camera_dim_height,
    UAC_A173_camera_hole_width,
    UAC_A173_camera_hole_height,

    UAC_A173_camera_center_x,
    UAC_A173_camera_hole_dim,
    UAC_A173_camera_hole_nipple_h,
    UAC_A173_camera_hole_nipple_d,
    UAC_A173_mount_hegiht,
    UAC_A173_ribbon);
}
UAC_A173_Camera();