module Distance(inD = 3.2, outD=4.5, h=4.5)
{
    difference()
    {
        cylinder(h = h, d = outD, $fn=8);
        translate([0,0,-0.01])
        cylinder(h = h*2, d = inD, $fn=32);
        
    }
}
Distance();