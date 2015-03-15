use <../MCAD/boxes.scad>
module weatherRadio(){
	translate([23.5,16.4,-2])
	rotate([90,0,90])
	cube([7.8, 12, 3]);

	translate([0,11,-2])
	rotate([90,0,90])
	cube([5, 12, 3]);

	translate([2.6,2.5,-2])
	rotate([90,0,0])
	cube([20.4, 12, 3]);

	cube([26, 31.6, 6.7]);
	translate([19.5,31.6, 4.0])
	rotate([90,0,180])
	cylinder(h=8, r=2.5);
}

module cover(){
	color("Blue")
	difference(){
		cube([35, 40, 12]);
		translate([2, 2, 1.5])
		cube([31, 36, 12]);
	}	
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

module finalCover(){
	difference(){
		translate([34.5, 0, 12])
		rotate([0,180,0])
		cover();
		translate([1.5, 1.5, 0])
		baseRadio();
	}


}

//finalCover();
//translate([1.5, 1.5, 0])

//print
translate([-35, 0, 0])
base();
rotate([0,180, 0])
translate([-33, 0, -12])
finalCover();


