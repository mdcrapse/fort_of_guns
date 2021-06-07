///xShootBullet(gun, direction, enemy, accuracy)
/// Shoots a single bullet for the current instance.

with instance_create(x, y, oBullet) {
    gun = argument0;
    direction = argument1 + random_range(-argument3, argument3);
    speed = gun.bullet_spd;
    damage_left = gun.damage;
    if argument2 {
        enemy = true;
        sprite_index = sBulletStrong;
    }
}

