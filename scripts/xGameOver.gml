///xGameOver()

with oParentRoomPersistent {
    instance_destroy();
}
with oParentRoomRemoval {
    instance_destroy();
}
with oParentRoomRequired {
    instance_destroy();
}

xRoomGenerate();

with oPlayer {
    x = oMain.room_entry_x;
    y = oMain.room_entry_y;
    _health = max_health;
    
    var gun = xGunGet(lhandgun.gun_id);
    lhandgun.mags = 3;
    lhandgun.bullets = gun.mag_size;
}

