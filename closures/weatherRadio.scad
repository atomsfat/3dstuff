module weatherRadio(){
	translate([23.5,16.4,-2])
	rotate([90,0,90])
	cube([9.8, 12, 4]);

	translate([0,11,-2])
	rotate([90,0,90])
	cube([7, 12, 4]);

	translate([2.6,2.5,-2])
	rotate([90,0,0])
	cube([23, 12, 4]);

	cube([26, 31.6, 6.7]);
	translate([19.5,31.6, 4.0])
	rotate([90,0,180])
	cylinder(h=8, r=3);
	translate([16.5,31.6, -6])	
	cube([6, 8, 10]);
}


module base(){
	difference(){
		difference(){
			cube([31, 36, 11]);
			translate([1.5, 1.5, 2])
			cube([28, 33, 13.5]);
		}
		translate([2, 2, 4])
		weatherRadio();
	}
}

module baseRadio(){
	color("Red")
	base();
	color("Green")
	translate([2, 2, 4])
	weatherRadio();	
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

module finalCover(){
 
	difference(){
		translate([34.5, 0, 12])
		rotate([0,180,0])
		   holder(31, 36 ,9, 1.5, .4);
           translate([1.5, 2, 0])
           baseRadio();
	}
}


//weatherRadio();

//finalCover();
//translate([1.5, 2, 0])
//base();
//print
//translate([-35, 0, 0])
//base();
rotate([0,180, 0])
translate([-33, 0, -12])
finalCover();


