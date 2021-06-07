///xDoorHideOrShow()

switch side {
case DOOR_SIDE_TOP:
    if oMain.room_y > 0 {
        image_index = 0;
    } else {
        image_index = 1;
    }
    // boss room
    if image_index == 0 && oMain.room_type[# oMain.room_x, oMain.room_y - 1] == ROOMTYPE_BOSS {
        image_index = 3;
    }
    break;
case DOOR_SIDE_RIGHT:
    if oMain.room_x < ds_grid_width(oMain.rooms) - 1 {
        image_index = 0;
    } else {
        image_index = 1;
    }
    // boss room
    if image_index == 0 && oMain.room_type[# oMain.room_x + 1, oMain.room_y] == ROOMTYPE_BOSS {
        image_index = 3;
    }
    break;
case DOOR_SIDE_BOTTOM:
    if oMain.room_y < ds_grid_height(oMain.rooms) - 1 {
        image_index = 0;
    } else {
        image_index = 1;
    }
    // boss room
    if image_index == 0 && oMain.room_type[# oMain.room_x, oMain.room_y + 1] == ROOMTYPE_BOSS {
        image_index = 3;
    }
    break;
case DOOR_SIDE_LEFT:
    if oMain.room_x > 0 {
        image_index = 0;
    } else {
        image_index = 1;
    }
    
    // boss room
    if image_index == 0 && oMain.room_type[# oMain.room_x - 1, oMain.room_y] == ROOMTYPE_BOSS {
        image_index = 3;
    }
break;
default:
    image_index = 1;
    break;
}

// lock
if image_index == 0 && !oMain.rooms_done[# oMain.room_x, oMain.room_y] {
    image_index = 2;
}

