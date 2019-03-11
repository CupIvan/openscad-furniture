// табурет ИКЕЯ FROSTA

module stool()
{
    stool_leg_angle(  0);
    stool_leg_angle( 90);
    stool_leg_angle(180);
    stool_leg_angle(270);
    translate([0, 0, 43]) cylinder(r=35/2, h=2, $fn=50);
}

module stool_leg_angle(A)
{
    rotate([0, 0, A]) translate([-20.3, -3.3/2, 0]) rotate([0, -90, -90]) stool_leg();
}

module stool_leg()
{
    H=43; R=6; h=3.3; d=2.3;
    cube([H-R,d,h]);
    translate([H, R, 0]) rotate([0,0,90]) cube([11,d,h]);
    // изгиб
    difference()
    {
        translate([H-R, R, 0]) cylinder(r=R, h=h, $fn=50);
        translate([H-R, R, 0]) cylinder(r=R-d, h=h, $fn=50);
        translate([H-2*R, R, 0]) cube([2*R-d,R,h]);
        translate([H-2*R, d, 0]) cube([R,R,h]);
    }
}
