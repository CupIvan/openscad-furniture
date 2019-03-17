use <../kitchen.scad>;

translate([0, 0, 8])
{
	// нижние ящики
	translate([  0, 0, 0]) kitchen_box(40, h=80, d=45, kva=1, ka=1);
	translate([ 40, 0, 0]) kitchen_box(40, h=80, d=45, kva=1);
	translate([ 80, 0, 0]) kitchen_box(50, h=80, d=45, kva=1);

	// столешница
	color("gray")
	{
		translate([0,   47-50, 80]) cube([130, 50, 2.5]);
		translate([180, 47-50, 80]) cube([48,  50, 2.5]);
	}

	// тумба с ящиками
	{
		translate([  180, 0,  0]) kitchen_box(40, h=35, d=45, ka=0, kva=1);
		translate([  180, 0, 35]) kitchen_box(40, h=15, d=45, ka=0, kva=0);
		translate([  180, 0, 50]) kitchen_box(40, h=15, d=45, ka=0, kva=0);
		translate([  180, 0, 65]) kitchen_box(40, h=15, d=45, ka=0, kva=0);
	}
}
// нижний плинтус
color("gray")
{
	cube([130, 1.6, 8]);
	cube([1.6, 45, 8]);
	translate([180, 0, 0]) cube([40, 1.6, 8]);
	translate([220-1.6, 0, 0]) cube([1.6, 45, 8]);
	// правая щель
	translate([220, 0, 0]) cube([8, 1.6, 88]);
}

// плита
color("white")
translate([130, 0, 0]) cube([50, 38, 85]);

// верхние ящики
translate([0, 45-30, 123])
{
	translate([  0, 0, 0]) kitchen_box(40, ka=1);
	translate([ 40, 0, 0]) kitchen_box(40);
	translate([ 80, 0, 0]) kitchen_box(50);
	translate([130, 0, 60-30]) kitchen_box(50, h=30, d=23, ka=0);
	translate([180, 0, 0]) kitchen_box(48);
}
