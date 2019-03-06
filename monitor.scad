module monitor()
{
	W=51; H=31;
	// ножка
	nl=23; nw=18; nh=33;
	color("lightgray")
	translate([(W-nl)/2,0,0]){
		cube([nl, nw, 1]);
		translate([(nl-7)/2,  nw-3-2.5,0])
		{
			cube([7, 2.5, 33]);
			translate([0, -5, nh-5]) cube([7, 5, 3]);
		}
	}
	// экран
	d=4.5;
	translate([0, nw-3-2.5-5-d, nh-5-H/2])
	difference() {
		color("black") cube([W, d, H]);
		color("white") translate([2, 0, 2]) cube([W-4, 1, H-4]);
	}
}
