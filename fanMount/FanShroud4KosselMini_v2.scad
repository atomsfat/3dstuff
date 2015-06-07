// Fan shroud for Kossel Mini with Chinese hotend
// 30mm fan

include <MCAD/shapes.scad>
include <fanMountPlate.scad>

endEffectorMountPlateHeight = 4;
endEffectorMountPlateWidth  = 36;

coolEndWidth    = 14 + 15.8;
coolEndHeight   = 30;
shroudWallWidth = 1;

ceww = coolEndWidth  + 2*shroudWallWidth;
cehw = coolEndHeight + endEffectorMountPlateHeight + shroudWallWidth;

fanWidth = 40;
fanMountSpace = 32/2;

shroudHeight = 30;
shroudTaperHeight = shroudHeight - 10;

//stand in for coolEnd
//color("blue") translate([0,endEffectorMountPlateHeight+coolEndHeight-fanWidth/2,shroudHeight]) rotate([90,0,0]) cylinder(coolEndHeight, r=coolEndWidth/2, $fn=50);

difference()
{
  union()
  {
    //tapered part
    hull()
    {
      fanMountPlate(fanWidth, fanMountSpace);
      // waist
      translate([0,-(fanWidth-(cehw))/2,shroudTaperHeight-2]) minkowski()
      {
        cube([ceww-3,cehw-2,2], center=true);
        cylinder(2,r=1,$fn=50);
      }
    }
    // adaptor
    hull()
    {
      translate([0,-(fanWidth-(cehw))/2,shroudTaperHeight+2]) minkowski()
      {
        cube([ceww-3,cehw-2,2], center=true);
        cylinder(2,r=1,$fn=50);
      }
      translate([0,-(fanWidth-(cehw))/2,shroudHeight-1]) minkowski()
      {
        cube([ceww-2,cehw-2,1], center=true);
        cylinder(1,r=1,$fn=50);
      }
    }
  }
  union()
  {
    //screw holes
    translate([ fanMountSpace, fanMountSpace,-1]) cylinder(4.5,r=1.4,$fn=50);
    translate([-fanMountSpace, fanMountSpace,-1]) cylinder(4.5,r=1.4,$fn=50);
    translate([ fanMountSpace,-fanMountSpace,-1]) cylinder(4.5,r=1.4,$fn=50);
    translate([-fanMountSpace,-fanMountSpace,-1]) cylinder(4.5,r=1.4,$fn=50);

    //Airflow guide
    hull()
    {
    //Fanblades hole
    cylinder(1,r=fanWidth/2 - 1.5, $fn=100);
    //waist cutOut
    translate([0,-(fanWidth-(coolEndHeight+endEffectorMountPlateHeight+2))/2,shroudTaperHeight-2]) minkowski()
      {
        cube([coolEndWidth-3,coolEndHeight,2], center=true);
        cylinder(2,r=1,$fn=50);
      }
    }

    // adaptor
    hull()
    {
      translate([0,-(fanWidth-(cehw))/2,shroudTaperHeight+2]) minkowski()
      {
        cube([coolEndWidth-3,coolEndHeight+1,2], center=true);
        cylinder(2,r=1,$fn=50);
      }
      translate([0,-(fanWidth-(cehw))/2,shroudHeight-1]) minkowski()
      {
        cube([ceww-4,cehw-4,1], center=true);
        cylinder(1,r=1,$fn=50);
      }
    }

    // cool-to-hot-end-tube coutout
    translate([0,-10,shroudHeight]) rotate([270,0,0]) #cylinder(coolEndHeight, r=4, $fn=50);

    //stand in for endEffector mounting plate
    difference()
    {
      translate([0,endEffectorMountPlateHeight-fanWidth/2,shroudHeight]) rotate([90,0,0]) cylinder(endEffectorMountPlateHeight+1, r=endEffectorMountPlateWidth/2, $fn=200);
      union()
      {
        translate([0,(endEffectorMountPlateHeight-2)-fanWidth/2,8]) cube([10,4,16], center=true);
        translate([0,(endEffectorMountPlateHeight-2)-fanWidth/2,6]) cube([30,4,12], center=true);
      }
    }
    translate([0,endEffectorMountPlateHeight-fanWidth/2+3,shroudHeight]) for (a = [0:60:359]) rotate([90, a, 0])
    {
      translate([0,12.5,0]) cylinder(10, r=1.5, $fn=50);
      translate([0,12.5,2]) hexagon(6,4);
    }
  }
}

