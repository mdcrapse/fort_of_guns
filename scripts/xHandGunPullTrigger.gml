///xHandGunPullTrigger(handgun)
/// Attempts to fire the hand gun.

with argument0 {
    if !reloading && bullets > 0 {
        var gun = xGunGet(gun_id);
        if can_shoot && instance_exists(gun) {
            can_shoot = false;
            alarm[1] = gun.shoot_time;
            if !gun.endless_clip {
                bullets -= 1;
            }
            xShootGun(gun, image_angle, enemy, focus);
            focus = clamp(focus + gun.kickback, 0, gun.accuracy);
            
            // reload
            if bullets <= 0 {
                reloading = true;
                alarm[0] = gun.reload_time;
            }
        }
    }
}

