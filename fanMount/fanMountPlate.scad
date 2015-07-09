module fanMountPlate(fanWidth, fanMountSpace)
{
  roundingRadius = (fanWidth - fanMountSpace*2) / 2;
  centerCube = fanWidth - 2*roundingRadius;
  difference()
  {
    union()
    {
      translate([0,0,0.5]) minkowski()  //moved up ½mil b/c height=1 + centered
      {
        cube([centerCube, fanWidth - 2*roundingRadius,1], center=true);
        cylinder(height=1,r=roundingRadius,$fn=50);
      }
    }
    union()
    {
      //screw holes
      translate([ fanMountSpace, fanMountSpace,-1]) cylinder(3.5,r=1.5,$fn=50);
      translate([-fanMountSpace, fanMountSpace,-1]) cylinder(3.5,r=1.5,$fn=50);
      translate([ fanMountSpace,-fanMountSpace,-1]) cylinder(3.5,r=1.5,$fn=50);
      translate([-fanMountSpace,-fanMountSpace,-1]) cylinder(3.5,r=1.5,$fn=50);

      cylinder(4,r=fanWidth/2 - 1.5, $fn=100);
    }
  }
}