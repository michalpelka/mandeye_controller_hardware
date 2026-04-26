//SSD13

module SSD13(insertD = 2)
{
    holeDepth = 10;
    faceDepth = 30;
    cableDepth = 30;
    
    color("red")
    {
        
        // holes 
        translate([23.7/2,24/2,-holeDepth])
            cylinder(h=holeDepth, d=insertD, $fn=16);
        translate([-23.7/2,24/2,-holeDepth])
            cylinder(h=holeDepth, d=insertD, $fn=16);
        translate([23.7/2,-24/2,-holeDepth])
            cylinder(h=holeDepth, d=insertD, $fn=16);
        translate([-23.7/2,-24/2,-holeDepth])
            cylinder(h=holeDepth, d=insertD, $fn=16);
    }
    color ("grey")
    {
        translate([0,0,faceDepth/2])
            cube([30, 30, faceDepth], center = true);
    }
    color ("pink")
    {
        translate([0,30/2-2,-cableDepth/2])
            cube([18, 4, cableDepth], center = true);
    }
    
    
    
}
SSD13();