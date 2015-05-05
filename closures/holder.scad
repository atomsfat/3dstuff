module holder(x, y, z, width, cleareance){
    wall = (2*width) + (2*cleareance) ;
    trans = width + cleareance; 
    difference(){
        cube([x + wall, y + wall, z + wall]);
        translate([width , width, trans])
        cube([x + (2*cleareance) , y + (2*cleareance), z + wall+1]);
    }
}   