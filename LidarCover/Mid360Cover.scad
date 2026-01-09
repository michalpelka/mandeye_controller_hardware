

module Leg()
{
    leg_width = 4;
    leg_radius = 50;
    difference()
    {
        union()
        {
            translate([0,-leg_width/2, 0])
                cube([leg_radius, leg_width,100]);
            translate([leg_radius, 0,0])
                cylinder(h=100, d = 12, $fn=32);
        }
        translate([leg_radius, 0,-0.01])
                cylinder(h=100, d = 3.5, $fn=32);
        translate([leg_radius, 0,5])
                cylinder(h=100, d = 7, $fn=32);

    }
}

module Mid360Hull(scale)
{   
    hull()
    {
        translate([0,0,25.5])
            rotate([0,0,-90])
                scale([scale, scale, scale])
                    import("../3rd/MID-360_4_ASM.stl");
    }
}
module Mid360HullOuter(scale)
{   
    union()
    {
        hull()
        {
            translate([0,0,25.5])
                rotate([0,0,-90])
                    scale([scale, scale, scale])
                        import("../3rd/MID-360_4_ASM.stl");
        }
        cylinder(40, d=200);
    }
}

module Mid360Cover(outer = 1.2)
{
//    translate([0,0,25.5])
//        rotate([0,0,-90])
//            color ("green") import("../3rd/MID-360_4_ASM.stl");
    //Mid360HullOuter(outer)
    intersection()
    {
        difference()
        {
            
            for (a= [-35, 35, 180-35, 180+35])
                rotate([0,0,a])
                    Leg();
            Mid360Hull(1.05);
        }
        Mid360HullOuter(outer);
    }
}
Mid360Cover();
  