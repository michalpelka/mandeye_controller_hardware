//use <../RPi4board-modded.scad>

// Nagative for raspberry pi 4 / 5 pocket
rpi_pcb_w = 56;
rpi_pcb_h = 85;
rpi_pcb_h2 = 65;

module raspberyPiWithReses()
{
    translate([-rpi_pcb_w/2,0,0])
    union()
    {
        // Board
        color("gray", 0.5) cube([rpi_pcb_w, rpi_pcb_h, 20]);
        
        // reses for GPIOS / 
        // reses for the ports (USBs and Eternet)
        color("red", 0.4) {
            translate([2,2,20])
            minkowski(){
                cube([rpi_pcb_w-4, rpi_pcb_h-20, 50]);
                sphere(2);
            }
        }
       // reses for Hat
        color("red", 0.1) {
            translate([0,rpi_pcb_h,0])
            minkowski(){
                cube([rpi_pcb_w, 100, 20]);
            }
        }

        
        // reses for the 2x HDMIs and USB-C 
        color("red", 0.4) 
        {
            translate([4,4,4])
                minkowski(){
                    cube ([100, 58, 6]) ;
                    sphere(4);
                }
        }
        // reses for the SD
        color("red",0.1) 
        {
            translate([rpi_pcb_w/2,-10,1])
            minkowski(){
                    cube([15, 20,5], true);
                    sphere(4);
                }
       
        }
    }
}


module raspberyPiPocket(margin = 4)
{
    translate([-rpi_pcb_w/2,0,0])
    union()
    {
        // Board
        color("gray", 1) cube([rpi_pcb_w, rpi_pcb_h, 20]);
        color("red", 0.4)
        {
            translate([0,-100,0]);
            minkowski()
            {
                    
                cube([rpi_pcb_w, 400, 400]);
                sphere(margin);
            }
            
       
        }       
    }
}

module raspberyPiHoles(d=3, h=8)
{
    sx = 3.5;
    sy = 3.5;
    
    x = 49;
    y = 58;
    translate([-rpi_pcb_w/2,0,0.1])
    union()
    {
        translate([sx,sy,-h/2])
            cylinder(h, d=d, center=true, $fn=16);
        translate([sx+x,sy,-h/2])
            cylinder(h, d=d, center=true, $fn=16);
        translate([sx,sy+y,-h/2])
            cylinder(h, d=d, center=true, $fn=16);
        translate([sx+x,sy+y,-h/2])
            cylinder(h, d=d, center=true, $fn=16);
    }
}

//raspberyPiWithReses();
raspberyPiPocket();
raspberyPiHoles();