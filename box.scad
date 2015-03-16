use <../MCAD/boxes.scad>
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
	cylinder(h=8, r=2.5);
	translate([17,31.6, -6])	
	cube([5, 8, 10]);
}

module cover(){
	color("Blue")
	difference(){
		cube([35, 40, 12]);
		translate([1, 1, 1.5])
		cube([33, 38, 12]);
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


