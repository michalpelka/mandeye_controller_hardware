module Distance(inD = 3.5, outD=5.5, h=2.5)
{
    difference()
    {
        cylinder(h = h, d = outD, $fn=32);
        translate([0,0,-0.01])
        cylinder(h = h*2, d = inD, $fn=32);
        
    }
}
Distance();