use <../../MCAD/nuts_and_bolts.scad>
module baseHolder(){    
    difference() {
        union() {
            cylinder(r = 15, h = 60);
            translate([-15, 0, 0])
            cube([30, 10, 60]);
        }
        color("red")
        translate([0, 105, 50])
        cylinder(r = 110, h = 11, $fn = 100);
    }
}

module hole(biggerRadio = 5.5, biggerHeight=3.5, zOffset=5){
    color("blue"){
    translate([0, 0, zOffset])
    cylinder(r = biggerRadio, h = biggerHeight, $fn = 50);
    cylinder(r = 1.8, h = 15, $fn = 50);    
   
    }
}


difference() {
    difference() {
        baseHolder();
        translate([0, 1.5, 36])
        #union(){
         hole(5.5, 3.5, 12);  
         translate([0, 0, -36])
         resize([0, 0, 45], auto=[false, false, true]) nutHole(6);   
       }
        
    }
    translate([0, -9, -2])   
    #hole(3.2, 54, 8);
      
}

