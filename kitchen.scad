module kitchen_box(w=40, h=60, d=30, ka=-1, kva=-1)
{
	color("lightgray")
	cube([w, d, h]);
	// фасад
	translate([0.1, -1.6, 0.1]) cube([w-0.2, 1.6, h-0.2]);
	// задняя стенка
	color("brown")
	translate([0, d, 0]) cube([w, 0.3, h]);
	// ручка
	KW=14.2; KH=1.2;
	_ka =(ka <0?4: (ka >0?w-4-KW: (w-KW)/2) );
	_kva=(kva<0?4: (kva>0?h-4-KH: (h-KH)/2));
	translate([_ka, -1.6, _kva]) kitchen_knob(KW);
}

module kitchen_knob(KW=14.2)
{
	color("gray")
	{
		translate([0,      -1.9, 0]) cube([1, 1.9, 1.2]);
		translate([14.2-1, -1.9, 0]) cube([1, 1.9, 1.2]);
		translate([0,      -1.9-0.5, 0]) cube([KW, 0.5, 1.2]);
	}
}
