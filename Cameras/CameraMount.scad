//include <threads.scad>

// UC-A73


UNC_Insert_D = 8.1;
M3_Insert_D = 4.1;
module Camera(
camera_dim_width,
camera_dim_height,
camera_hole_width,
camera_hole_height,
camera_center_x,
camera_hole_dim,
camera_hole_nipple_h,
camera_hole_nipple_d,
mount_hegiht,
ribbon
)
{

    translate([0,0,-mount_hegiht/2])difference() {
        
        // box + nipples
        union()
        {
        
            translate([0,0,mount_hegiht/2])
                cube([camera_dim_width, camera_dim_height, mount_hegiht], center=true);
            translate([0,-camera_center_x,0])
            {
                translate([camera_hole_width/2, camera_hole_height/2, mount_hegiht])
                    cylinder(h = camera_hole_nipple_h, d = camera_hole_nipple_d, $fn=20);
                translate([camera_hole_width/2, -camera_hole_height/2, mount_hegiht])
                    cylinder(h = camera_hole_nipple_h, d = camera_hole_nipple_d, $fn=20);
                translate([-camera_hole_width/2, camera_hole_height/2, mount_hegiht])
                    cylinder(h = camera_hole_nipple_h, d = camera_hole_nipple_d, $fn=20);
                translate([-camera_hole_width/2, -camera_hole_height/2, mount_hegiht])
                    cylinder(h = camera_hole_nipple_h, d = camera_hole_nipple_d, $fn=20);
            }
        }
         
            
        // mount Holes for camera 
        translate([0,-camera_center_x,0])
        {
            translate([camera_hole_width/2, camera_hole_height/2, -0.001])
                cylinder(h = 100, d = camera_hole_dim, $fn=20);
            
            translate([camera_hole_width/2, -camera_hole_height/2,-0.001])
                cylinder(h = 100, d = camera_hole_dim, $fn=20);

            translate([-camera_hole_width/2, camera_hole_height/2,-0.001])
                cylinder(h = 100, d = camera_hole_dim, $fn=20);

            translate([-camera_hole_width/2, -camera_hole_height/2,-0.001])
                cylinder(h = 100, d = camera_hole_dim, $fn=20);
        }
        // bottom for UNC
        translate([0,camera_dim_height/2+0.001,mount_hegiht/2])
            rotate([90,0,0])
                cylinder(h = 15, d = UNC_Insert_D, $fn=20);
        // bottom for M3
        translate([10,camera_dim_height/2+0.001,mount_hegiht/2])
            rotate([90,0,0])
                cylinder(h = 15, d = M3_Insert_D, $fn=20);
         translate([-10,camera_dim_height/2+0.001,mount_hegiht/2])
            rotate([90,0,0])
                cylinder(h = 15, d = M3_Insert_D, $fn=20);
        
        // cutout for ribbon
        translate([0,0,mount_hegiht])
            rotate([90,0,0])
                cube([ribbon, 2, camera_dim_height], center=true); 
        
    }
}