///xHandGunPickup(handgun, pickup)

with argument0 {
    var new_gun_id = argument1.gun_id;
    var new_mag = argument1.bullets;

    argument1.gun_id = gun_id;
    argument1.bullets = bullets;
    
    gun_id = new_gun_id;
    bullets = new_mag;
    
    var gun = xGunGet(gun_id);
    if instance_exists(gun) && bullets <= 0 {
        reloading = true;
        alarm[0] = gun.reload_time;
    } else {
        reloading = false;
        alarm[0] = -1;
    }
}

