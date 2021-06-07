///xCreateRandomSprite(sprites...)
/// Returns a new random sprite.
/// Creates a random sprite from the specified sprites.
/// The width and height of the returned sprite is equal to the first sprite argument.

var surf = surface_create(
    sprite_get_width(argument[0]),
    sprite_get_height(argument[0]),
);

surface_set_target(surf);
draw_clear_alpha(c_dkgray, 1);
for(var i = 0; i < argument_count; i++) {
    draw_sprite_ext(
        argument[i],
        irandom(sprite_get_number(argument[i])),
        0,
        0,
        1,
        1,
        0, 
        make_colour_rgb(irandom(255), irandom(255), irandom(255)),
        random(1),
    );
}
surface_reset_target();

var spr_w = sprite_get_width(argument[0]);
var spr_h = sprite_get_height(argument[0]);
var spr = sprite_create_from_surface(
    surf,
    0,
    0,
    spr_w,
    spr_h,
    true,
    false,
    floor(spr_w / 2),
    floor(spr_h / 2),
);

surface_free(surf);

return spr;

