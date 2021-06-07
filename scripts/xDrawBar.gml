///xDrawBar(value, max, x, y)

var half = 8;

draw_set_colour(c_dkgray);
draw_rectangle(
    floor(argument2 - half),
    floor(argument3),
    floor(argument2 + half),
    floor(argument3 + 1),
    false,
);

draw_set_colour(c_yellow);
draw_rectangle(
    floor(argument2 - half),
    floor(argument3),
    floor(argument2 - half) + (1 - (argument0 / argument1)) * (half * 2),
    floor(argument3 + 1),
    false,
);
draw_set_colour(-1);

