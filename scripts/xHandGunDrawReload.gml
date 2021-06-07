///xHandGunDrawReload(handgun, x, y)

var half = 8;

draw_set_colour(c_red);
draw_rectangle(
    floor(argument1 - half),
    floor(argument2),
    floor(argument1 + half),
    floor(argument2 + 1),
    false,
);

draw_set_colour(c_green);
var gun = xGunGet(argument0.gun_id);
if instance_exists(gun) {
    draw_rectangle(
        floor(argument1 - half),
        floor(argument2),
        floor(argument1 - half) + (1 - (argument0.alarm[0] / gun.reload_time)) * (half * 2),
        floor(argument2 + 1),
        false,
    );
}
draw_set_colour(-1);

