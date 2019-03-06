module chair()
{
	w=39; h=41; d=3;
	color("chocolate")
	translate([0, 0, h]) union() {
		r=5;
		translate([r,0]) cube([w-2*r,w,d]);
		translate([  r,  r,0]) cylinder(h=d,r=5, $fn=20);
		translate([w-r,  r,0]) cylinder(h=d,r=5, $fn=20);
		translate([w-r,w-r,0]) cylinder(h=d,r=5, $fn=20);
		translate([  r,w-r,0]) cylinder(h=d,r=5, $fn=20);
		translate([0,r]) cube([w,w-2*r,d]);
	}

	// передние ножки
	r=1.5; o=3;
	translate([  o,   o, 0]) cylinder(h=h,r=r, $fn=20);
	translate([w-o,   o, 0]) cylinder(h=h,r=r, $fn=20);

	// задние ножки
	H=83;
	translate([w-o, w, 0]) cylinder(h=H-2,r=r, $fn=20);
	translate([  o, w, 0]) cylinder(h=H-2,r=r, $fn=20);

	// спинка
	translate([0, w-r-1.5, H-6]) cube([w,1.5,6]);
	translate([-0.5, w-r-0.7, h]) {
	translate([10, 0, 0]) cylinder(h=H-h,r=0.5);
	translate([15, 0, 0]) cylinder(h=H-h,r=0.5);
	translate([20, 0, 0]) cylinder(h=H-h,r=0.5);
	translate([25, 0, 0]) cylinder(h=H-h,r=0.5);
	translate([30, 0, 0]) cylinder(h=H-h,r=0.5);
	}
}
