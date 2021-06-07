///xGunPickupCreate(x, y, gun_id, bullets)

with instance_create(argument0, argument1, oGunPickup) {
    gun_id = argument2;
    var gun = xGunGet(argument2);
    if instance_exists(gun) {
        bullets = argument3;
    }
}

