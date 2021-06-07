///xDrawHearts(instance, x, y)

var heart_w = sprite_get_width(sHeart) + 1;
var half_w = xHealth(argument0) * heart_w / 2;
for(var i = 0; i < xHealth(argument0); i++) {
    draw_sprite(sHeart, 0, argument1 - half_w + heart_w * i, argument2);
}

