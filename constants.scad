// unc heat insert cnc-kitchen 1/4"-20-x12.7
UNC_Insert_D = 8.1;
UNC_Insert_H = 14;

// M3 insert cnc-kitchen M3x5.7
M3_Insert_D = 4.1;
M3_Insert_H = 4.1;

// model settings
dimensions_H = 45;
dimensions_D = 110;
mount_holes_angles = [-35,0, 35, 180-35, 180, 180+35];
lip_dimension_D = dimensions_D - 20;
holes_D = dimensions_D - 10;

// raspberry pi dims:
// https://pip-assets.raspberrypi.com/categories/892-raspberry-pi-5/documents/RP-008347-DS-1-raspberry-pi-5-mechanical-drawing.pdf
raspberry_pi_W = 56+5;
raspberry_pi_H = 30;
raspberry_pi_holes_X = 49;
raspberry_pi_holes_Y = 58;
raspberry_pi_holes_D = 3;


module circular_holes(D, d, h=10) {
      for (a = mount_holes_angles)
      {
            rotate([0,0,a])
                translate([D/2,0,-h])
                    cylinder(h=h, d=d, $fn=32);

      }
//    N = 12;
//    a_inc = 360/12;
//    for(i = [-a_inc  : a_inc : a_inc ]) {
//        rotate([0,0,i])
//            translate([D/2,0,-h])
//                cylinder(h=h, d=d, $fn=32);
//    }
//    for(i = [-a_inc + 180  : a_inc : a_inc+180]) {
//        rotate([0,0,i])
//            translate([D/2,0,-h])
//                cylinder(h=h, d=d, $fn=32);
//    }
}

