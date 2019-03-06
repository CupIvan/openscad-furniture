module wardrobe(W=60, H=190, D=45)
{
	d=1.6; // толщина стенок

	// дверцы
	{
		translate([0, 0, 10]) rotate([0,0,-60])
		{
			color("BlanchedAlmond") wardrobe_door(W, H-10, d);
			translate([W/2-3, -3, 80]) wardrobe_knob();
		}
		color("BlanchedAlmond")
		translate([W/2+0.2, 0, 10])
		{
			wardrobe_door(W, H-10, d);
			translate([3, -3, 80]) wardrobe_knob();
		}
	}

	// боковые стенки
	color([0.2,0.2,0.2])
	{
		translate([0,   d, 0]) cube([d, D-d, H]); // левая
		translate([W-d, d, 0]) cube([d, D-d, H]); // правая
		translate([d,   2*d, 0]) cube([W-2*d, d, 10]); // нижняя заглушка
		translate([d, d,  10]) cube([W-2*d, D-d, d]); // пол
		translate([d, d, H-d]) cube([W-2*d, D-d, d]); // потолок
		for(h = [10 : 40 : H-40])
		translate([d, d,   h]) cube([W-2*d, D-d, d]); // полки
	}

	// задняя стенка
	color("Burlywood")
	translate([0, D, 10]) cube([W, 0.3, H-10]);
}

module wardrobe_door(W, H, d)
{
	color("BlanchedAlmond")
	cube([W/2-0.2, d, H]);
}
module wardrobe_knob()
{
	color("White")
	{
		cylinder(20, 0.3, 0.3);
		translate([0, 0, 3]) rotate([-90,0,0]) cylinder(3,  0.3, 0.3);
		translate([0, 0, 20-3]) rotate([-90,0,0]) cylinder(3,  0.3, 0.3);
	}
}
