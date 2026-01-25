//use <../RPi4board-modded.scad>

// Nagative for raspberry pi 4 / 5 pocket
rpi_pcb_w = 56;
rpi_pcb_h = 85;
rpi_pcb_h2 = 65;

module raspberryPiWithrecesses()
{
    translate([-rpi_pcb_w/2,0,0])
    union()
    {
        // Board
        color("gray", 0.5) cube([rpi_pcb_w, rpi_pcb_h, 20]);
        
        // recesses for GPIOS / 
        // recesses for the ports (USBs and Eternet)
        color("red", 0.4) {
            translate([2,2,20])
            minkowski(){
                cube([rpi_pcb_w-4, rpi_pcb_h-20, 50]);
                sphere(2);
            }
        }
       // recesses for Hat
        color("red", 0.1) {
            translate([0,rpi_pcb_h,0])
            minkowski(){
                cube([rpi_pcb_w, 100, 20]);
            }
        }

        
        // recesses for the 2x HDMIs and USB-C 
        color("red", 0.4) 
        {
            translate([4,4,1.1])
                minkowski(){
                    cube ([100, 58, 6]) ;
                    sphere(4);
                }
        }
        // recesses for the SD
        color("red",0.1) 
        {
            translate([rpi_pcb_w/2,-10,1])
            minkowski(){
                    cube([15, 20,5], true);
                    sphere(10, $fn=16);
                }
       
        }
    }
}


module raspberryPiPocket(margin = 4)
{
    translate([-rpi_pcb_w/2,0,0])
    union()
    {
        // Board
        color("gray", 1) cube([rpi_pcb_w, rpi_pcb_h, 20]);
        color("red", 0.4)
        {
            translate([0,-100,0])
            minkowski()
            {
                cube([rpi_pcb_w, 300, 20]);
                sphere(margin);
            }
            
       
        }       
    }
}

module raspberryPiHoles(d=3, h=8,$fn=16)
{
    sx = 3.5;
    sy = 3.5;
    
    x = 49;
    y = 58;
    translate([-rpi_pcb_w/2,0,0.1])
    union()
    {
        translate([sx,sy,-h/2])
            cylinder(h, d=d, center=true);
        translate([sx+x,sy,-h/2])
            cylinder(h, d=d, center=true);
        translate([sx,sy+y,-h/2])
            cylinder(h, d=d, center=true);
        translate([sx+x,sy+y,-h/2])
            cylinder(h, d=d, center=true);
    }
}

module raspberryPiProtection()
{
    h1=0.75;
    ht=3;

    difference()
    {
        union()
        {
            hull()
            {
                translate([0,rpi_pcb_h/2,0])
                    cube([rpi_pcb_w,rpi_pcb_h,h1], center=true);
            
            }
            translate([0,0,ht])
                raspberryPiHoles(d=5, h=ht);
            
        }
        translate([0,0,ht+0.1])
            raspberryPiHoles(d=3, h=ht*2);
    }
}
//raspberryPiProtection();
//raspberryPiWithrecesses();
//raspberryPiPocket();
raspberryPiHoles();

