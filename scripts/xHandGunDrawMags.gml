///xHandGunDrawMags(handgun, x, y)

var mag_w = sprite_get_width(sMag) + 1;
var half_w = argument0.mags * mag_w / 2;
for(var i = 0; i < argument0.mags; i++) {
    draw_sprite(sMag, 0, argument1 - half_w + mag_w * i, argument2);
}

