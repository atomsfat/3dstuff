//40
//53.3
//52.7
//28 lock_cleareance
//13.15
//10.41

 circle_cleareance = 40;
module lock(){
   
    circle_radio = 26.5;
    lock_radio = 7;
    lock_cleareance = 28;
    y_cleareance = 10;
    color("DarkGoldenrod")
    cube([70, 170, 1]);
    //lock
    color("Silver")
    translate([35, y_cleareance + circle_radio, 1])
    cylinder(h=10, r=circle_radio);
    //lock inner
    echo("green",  y_cleareance + lock_radio + lock_cleareance);
    translate([35, y_cleareance + lock_radio + lock_cleareance , 1])
    color("green")
    cylinder(h=30, r=lock_radio);
    //manija circle
     color("Silver")
    translate([35, y_cleareance + (3*circle_radio) + circle_cleareance, 1])
    cylinder(h=10, r=circle_radio);
}

lock();

use <../../MCAD/involute_gears.scad>


color("Orchid")
translate([35, 45, 12])
gear (number_of_teeth=48,
//Diametral pitch (PA)
pressure_angle=12,
//Diametral pitch (P)
diametral_pitch=1,
//hole
	hub_diameter=0,
	bore_diameter=0
);

color("Red")
translate([35, 75, 12])
gear (number_of_teeth=12,
//Diametral pitch (PA)
pressure_angle=12,
//Diametral pitch (P)
diametral_pitch=1,
//hole
	hub_diameter=0,
	bore_diameter=0,
    rim_thickness=20
);