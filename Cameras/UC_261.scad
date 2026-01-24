UC_261_camera_dim_width = 36;
UC_261_camera_dim_height = 36;
UC_261_camera_hole_width = 25.8+3.1;
UC_261_camera_hole_height = 25.8+3.1;
UC_261_camera_center_x = 0;
UC_261_camera_hole_dim = 3.1;
UC_261_camera_hole_nipple_h = 2;
UC_261_camera_hole_nipple_d = UC_261_camera_hole_dim + 2;
UC_261_mount_hegiht = 14;
UC_261_ribbon = 17;

include <CameraMount.scad>
module UC_261_Camera()
{
    Camera(
    UC_261_camera_dim_width,
    UC_261_camera_dim_height,
    UC_261_camera_hole_width,
    UC_261_camera_hole_height,

    UC_261_camera_center_x,
    UC_261_camera_hole_dim,
    UC_261_camera_hole_nipple_h,
    UC_261_camera_hole_nipple_d,
    UC_261_mount_hegiht,
    UC_261_ribbon);
}
UC_261_Camera();