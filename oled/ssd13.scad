//SSD13

module SSD13(insertD = 1.5)
{
    holeDepth = 10;
    faceDepth = 30;
    cableDepth = 30;
    
    color("red")
    {
        
        // holes 
        translate([23.7/2,24/2,-holeDepth+5])
            cylinder(h=holeDepth, d=insertD, $fn=16);
        translate([-23.7/2,24/2,-holeDepth+5])
            cylinder(h=holeDepth, d=insertD, $fn=16);
        translate([23.7/2,-24/2,-holeDepth+5])
            cylinder(h=holeDepth, d=insertD, $fn=16);
        translate([-23.7/2,-24/2,-holeDepth+5])
            cylinder(h=holeDepth, d=insertD, $fn=16);
    }
    color ("grey")
    {
        difference()
        {
        translate([0,0,faceDepth/2])
            cube([30, 30, faceDepth], center = true);
        translate([(30-6)/2,(30-6)/2,0])
           cube(6,6,1, center=true);
        translate([-(30-6)/2,(30-6)/2,0])
           cube(6,6,1, center=true);
        translate([-(30-6)/2,-(30-6)/2,0])
           cube(6,6,1, center=true);
        translate([(30-6)/2,-(30-6)/2,0])
           cube(6,6,1, center=true);
        }
    }
    color ("pink")
    {
        translate([0,30/2-2,-cableDepth/2])
            cube([18, 4, cableDepth], center = true);
    }    
}
module Button()
{
    rotate([0,180,0])
    {
    cylinder(3, d = 12.5, true);
    translate([0,0,3])
        cylinder(40, d = 18, true, $fn=6);
    }
}

SSD13();
translate([30,0,0])
    Button();