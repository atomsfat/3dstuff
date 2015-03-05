use <../../MCAD/involute_gears.scad>
color("Orchid")
		gear (number_of_teeth=17,
			circular_pitch=500,
			circles=5);

module muesca(){
  b = 10;
  h = 10;
  w = 130;

  //Start with an extruded triangle
  rotate(a=[90,-90,0])
    linear_extrude(height = w, center = false, convexity = 10, twist = 0)
    polygon(points=[[0,0],[h,0],[0,b]], paths=[[0,1,2]]);

}
module base(){
  difference(){
    translate([-45, -120, 0]){
      cube([90,190,10]);					
    }
    translate([0, -60, 0]){
      cylinder(h=10, r=26);
    }
    translate([0, 60, 0]){
      cylinder(h=10, r=26);
    	}
  }
  translate([45, 15, 10]){
    rotate(a=[0,180,0])
      muesca();
  }
  translate([-45, 15, 10]){
    rotate(a=[0,-90,0])
      muesca();
  }

}
difference(){
  translate([-60, -110, 0]){
    cube([120,120,40]);					
  }
  translate([0, -60, 0]){
    cylinder(h=40, r=26);
  }
  base();
}
