///xRoomGenerate()
/// Creates instances for the current room.

var wall_size = 48;

var rm_type = oMain.room_type[# oMain.room_x, oMain.room_y];

if rm_type == ROOMTYPE_NORMAL || rm_type == ROOMTYPE_MAP || rm_type == ROOMTYPE_BOSSKEY || rm_type == ROOMTYPE_DARK || rm_type == ROOMTYPE_BOSS {
    repeat irandom_range(10, 20) {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oBush,
        );
    }
    
    repeat irandom_range(3, 4) {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oTree,
        );
    }
    
    repeat irandom_range(2, 3) {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oMagPickup,
        );
    }
}

if rm_type == ROOMTYPE_NORMAL || rm_type == ROOMTYPE_MAP || rm_type == ROOMTYPE_BOSSKEY {
    with instance_create(
        room_width / 2,
        room_height / 2,
        oEnemyGunner,
    ) {
        gun_id = oMain.room_guns1[# oMain.room_x, oMain.room_y];
        handgun = xHandGunCreate(gun_id, id);
    }
    with instance_create(
        room_width / 2,
        room_height / 2,
        oEnemyGunner,
    ) {
        gun_id = oMain.room_guns2[# oMain.room_x, oMain.room_y];
        handgun = xHandGunCreate(gun_id, id);
    }
}

if rm_type == ROOMTYPE_BOSSKEY {
    instance_create(
        irandom_range(wall_size, room_width - wall_size),
        irandom_range(wall_size, room_height - wall_size),
        oCookieTree,
    );
    
    instance_create(room_width / 2, room_height / 2, oBossKey);
}

if rm_type == ROOMTYPE_MAP {
    instance_create(room_width / 2, room_height / 2, oMap);
    
    repeat irandom_range(20, 25) {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oTree,
        );
    }
}

if rm_type == ROOMTYPE_BOSS {
    repeat 6 {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oTorch,
        );
    }
    
    repeat 4 {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oMagPickup,
        );
    }

    instance_create(room_width / 2, room_height / 2 - 64, oDarkPortal);
}

if rm_type == ROOMTYPE_DARK {
    repeat 4 {
        instance_create(
            irandom_range(wall_size, room_width - wall_size),
            irandom_range(wall_size, room_height - wall_size),
            oTorch,
        );
    }
    
    instance_create(room_width / 2, room_height / 2 + 64, oDarkPortal);
}

