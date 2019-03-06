module computer_table(L=100, W=75, H=75)
{
	// столешница
	d=2;
	color("chocolate")
	translate([0, 0, H-d]) cube([L,W,d]);

	// ножки
	n=4.5; o=3;
	translate([    o,     o, 0]) cube([n,n,H-d]);
	translate([L-o-n,     o, 0]) cube([n,n,H-d]);
	translate([L-o-n, W-o-n, 0]) cube([n,n,H-d]);
	translate([    o, W-o-n, 0]) cube([n,n,H-d]);

	// обвязка
	h=9; t=0.5;
	translate([    n+o,     o+t, H-d-h]) cube([L-2*(n+o),d,h]);
	translate([    n+o, W-o-d-t, H-d-h]) cube([L-2*(n+o),d,h]);
	rotate(90) translate([n+o, -o-d-t, H-d-h]) cube([W-2*(n+o),d,h]);
	rotate(90) translate([n+o, -L+o+t, H-d-h]) cube([W-2*(n+o),d,h]);
}
