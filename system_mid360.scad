include <constants.scad>
use <bottom.scad>
use <lid-mid360.scad>
use <Cameras/UC_A173.scad>
use <Cameras/UC_261_Mid360.scad>

color("orange") Bottom();
translate([0,0,dimensions_H])
    color("green") LidMid360();
translate([0,0,dimensions_H+3])
    color("red") UC_261_Mid360_Cover();
translate([0,0,dimensions_H+28])
    rotate([0,0,-90])
    import("3rd/MID-360_4_ASM.stl");
translate([0,40,53])
rotate([-90,0,0])
    UAC_A173_Camera();
