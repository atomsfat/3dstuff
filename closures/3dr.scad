use <holder.scad>


module 3dr1(){
    x=17.5;
    y=47;
    //base
    color("gray")
    cube([x,y,5]);

    //antenas
    translate([0,47,2.5])
    color("red")
    union(){
        cube([7,1.6,7]);
        translate([3.5,1.6, 3.5])
        rotate([-90,0,0])
        cylinder(h=8, r=3.5);
    }    
    //usb port
    translate([2.25,-11, 2.5])
    color("green")
    cube([13,15,5]);
 
}



wallWidth = 1.5;
cleareance = .4;
wall = wallWidth + cleareance;

module base1(){
    translate([wall, wall, wall])
    3dr1();

    difference(){
        holder(17, 47, 5, wallWidth, cleareance);
        color("Blue")
        translate([wall, wall, wall])
        3dr1();
     }
} 

base1();
//difference(){
    //rotate([0,180,0])
    //translate([-(17+3*wall), -(wall) , -(5+4*wall) ])
   // %holder(17+2*wall, 47+2*wall, 5+2*wall, wallWidth, //cleareance);
//    base1();
//}
 