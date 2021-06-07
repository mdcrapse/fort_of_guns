///xHandGunMoveToOwner(handgun, owner, direction)

with argument0 {
    var yscale = 1;
    if argument2 > 90 && argument2 < 270 {
        yscale = -1;
    }

    x = argument1.x;
    y = argument1.y;
    image_xscale = abs(argument1.image_xscale);
    image_yscale = argument1.image_yscale * yscale;
    image_angle = argument2;
}

