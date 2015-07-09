module muesca(b, h, w){


  //Start with an extruded triangle
  //rotate(a=[90,45,0])
   // linear_extrude(height = w, center = false, convexity = 30, twist = 0)
    polygon(points=[[0,2.5],[0,7.5],[5,10],[5,0]], paths=[[0,1,2,3]]);

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
//holder(19, 47, 5, wallWidth, cleareance);
muesca(10, 16, 10);