//40
//53.3
//52.7
//28 lock_cleareance
//13.15
//10.41
module lock(){
    circle_cleareance = 40;
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
    translate([35, y_cleareance + lock_radio + lock_cleareance , 1])
    color("green")
    cylinder(h=10, r=lock_radio);
    //manija circle
     color("Silver")
    translate([35, y_cleareance + (3*circle_radio) + circle_cleareance, 1])
    cylinder(h=10, r=circle_radio);
}

lock();

use <../../MCAD/involute_gears.scad>

color("Orchid")
gear (number_of_teeth=7, 
circular_pitch=500,
diametral_pitch = 6,
pressure_angle=20);

translate([35, -10, 1])
gear (number_of_teeth=16, 
circular_pitch=500,
diametral_pitch = 6,
pressure_angle=20);
translate([35, -10, 30])
gear (number_of_teeth=5, 
diametral_pitch = 6,
pressure_angle=20);

translate([-35, -10, 1])
gear (number_of_teeth=21, 
circular_pitch=500,
diametral_pitch = 6,
pressure_angle=20);