module relay(){
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
    //holes
    translate([3.5, 3.5, -2.5])
    cylinder(h=8, r=2.5);
    translate([x-3.5, 3.5,-2.5])
    cylinder(h=8, r=2.5);
    translate([3.5,y-3.5,-2.5])
    cylinder(h=8, r=2.5);
    translate([x-3.5,y-3.5,-2.5])
    cylinder(h=8, r=2.5);
}




module holder(x, y, z, width, cleareance){
    wall = (2*width) + (2*cleareance) ;
    trans = width + cleareance; 
    difference(){
        cube([x + wall, y + wall, z + wall]);
        translate([width , width, trans])
        cube([x + (2*cleareance) , y + (2*cleareance), z + wall+1]);
    }
}

wallWidth = 1.5;
cleareance = .4;
wall = wallWidth + cleareance;

difference(){
    holder(27,35, 5, wallWidth, cleareance);
    translate([wall, wall, wall])
    color("Blue")
    relay();
 }