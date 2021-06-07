///xHandGunDraw(handgun)

with argument0 {
    var gun = xGunGet(gun_id);
    if instance_exists(gun) {
        draw_sprite_ext(gun.sprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); 
    }
}

