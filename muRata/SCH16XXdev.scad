module muRataDevBoadHoles(d=3.2, h=10)
{
    x=35.1;
    y=18.8;
    translate([0,0,.01]) color("red")
    {
        translate([x/2,y/2,h/2])
            cylinder(h,d=d, center=true, $fn=32);
        translate([-x/2,y/2,h/2])
            cylinder(h,d=d, center=true, $fn=32);
         translate([x/2,-y/2,h/2])
            cylinder(h,d=d, center=true, $fn=32);   
        translate([-x/2,-y/2,h/2])
            cylinder(h,d=d, center=true, $fn=32);
    }
}

module muRataDevBoardPCBOutline()
{
    union()
    {
        translate([0,0,2.5/2])
            cube([43.5, 28, 2.5],true );
        translate([0,0,5/2])
            cube ([17, 16, 5], true);
    }
}
module muRataDevBoard()
{
    
    difference()
    {
        muRataDevBoardPCBOutline();
        muRataDevBoadHoles();
    }
        
}

muRataDevBoard();

//muRataDevBoadHoles();