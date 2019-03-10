// Цифровое пианино Roland HP302

module piano()
{
    W=130; D=42;
    translate([  0,   0,  0]) piano_leg(D);
    translate([W+4,   0,  0]) piano_leg(D);
    translate([  4,   0, 63])
    {
        translate([0, 0.5,   0]) piano_wood([W,  D-0.5, 7.5]);
        translate([0,   0, 7.5])
        {
            difference()
            {
                translate([0,   1, 0]) piano_wood([W, 17, 1.5]);
                translate([3.8, 1, 0]) piano_wood([W-3.8*2, 15, 1.5]);
            }
            translate([4,     1, 0]) piano_board();

            translate([-4, D-24, 0]) piano_wood([W+8, 24, 12]);
            // пюпитр
            translate([(W-56)/2, D-15, 12]) rotate([70, 0, 0]) piano_wood([56,  20, 0.8]);
            translate([(W-56)/2, D-20, 12]) piano_wood([56,  1.5, 1]);
        }
    }
    // подставка для педалей
    translate([3.5, D-15, 3]) piano_wood([W+1,  1,  50]);
    translate([3.5, D-16, 3]) piano_wood([W+1,  1,   5]);
}

module piano_leg(D)
{
    L=D; H=59;
    piano_wood([4, L, 4]);
    translate([(4-2.5)/2,    1, 4]) piano_wood([2.5,  6, H]);
    translate([(4-2.5)/2, L-23, 4]) piano_wood([2.5, 23, H]);
    translate([0, 0, H+4])
    difference()
    {
        piano_wood([4, L, 19]);
        translate([0, 0, 11]) rotate([18, 0, 0]) piano_wood([4, L, 11]);
    }
}

module piano_board()
{
    N=52;
    for(i = [0 : 1 : N-1])
    translate([2.35*i, 0, 0]) piano_white_key();
    for(i = [0 : 1 : N-2])
    if ((i+5)%7 != 2)
    if ((i+5)%7 != 6)
    translate([2.35*i+1.55, 0, 0]) piano_black_key();
}

module piano_white_key()
{
    color("white")
    cube([2.2, 14.5, 1.5]);
}
module piano_black_key()
{
    color("black")
    translate([0, 5, 0]) cube([1.5, 9.5, 2.5]);
}

module piano_wood(x)
{
    color("DarkSlateGray")
    cube(x);
}
