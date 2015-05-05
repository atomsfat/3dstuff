use <holder.scad>


module 3dr(){
    x=27;
    y=35;
    //base
    color("gray")
    cube([x,y,2.5]);
    //relay
    translate([6,6,2.5])
    color("blue")
    cube([15,19,15.5]);
    //hot conection
    translate([6,27,2.5])
    color("red")
    cube([15,13,8]);
    //logic conection
    translate([12,-4, 4.5])
    color("green")
    cube([9,9,5]);
 
}



wallWidth = 1.5;
cleareance = .4;
wall = wallWidth + cleareance;

 3dr();

//difference(){
//    holder(27,35, 5, wallWidth, cleareance);
//    translate([wall, wall, wall])
//    color("Blue")
//    3dr();
 //}