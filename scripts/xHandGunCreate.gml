///xHandGunCreate(gun_id, owner)

with instance_create(0, 0, oHandGun) {
    gun_id = argument0;
    owner = argument1;
    
    var gun = xGunGet(argument0);
    if instance_exists(gun) {
        bullets = gun.mag_size;
    }
    if object_get_parent(argument1.object_index) == oParentEnemy {
        enemy = true;
    }
    
    return id;
}

return noone;

