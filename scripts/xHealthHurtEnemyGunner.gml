///xHealthHurtEnemyGunner(attacker)

var died = false;

if argument0.object_index == oBullet {
    alarm[0] = ceil(xSeconds(0.1));
    _health -= argument0.damage_left;
    if _health <= 0 {
        died = true;
    }
} else {
    died = true;
}

if died {
    with instance_create(x, y, oEnemyGunnerDead) {
        direction = point_direction(argument0.x, argument0.y, x, y);
        image_angle = direction;
    }
    if instance_exists(handgun) {
        repeat handgun.mags {
            instance_create(x, y, oMagPickup);
        }
        xGunPickupCreate(x, y, gun_id, handgun.bullets);
    }
    instance_destroy();
}

