///xRoomChange(side)

var output_dist = 64;

with oMain {
    // set room to cleared
    rooms_done[# room_x, room_y] = true;
    
    // remove unneeded entities
    with oParentRoomRemoval {
        instance_destroy();
    }

    // save entities
    with oParentRoomPersistent {
        instance_deactivate_object(id);
        ds_list_add(other.room_entities[# other.room_x, other.room_y], id);
    }

    // change room
    if argument0 == DOOR_SIDE_TOP && room_y > 0 {
        room_y -= 1;
        with oPlayer {
            x = room_width / 2;
            y = room_height - output_dist;
        }
    } else if argument0 == DOOR_SIDE_RIGHT && room_x < ds_grid_width(rooms) - 1 {
        room_x += 1;
        with oPlayer {
            x = output_dist;
            y = room_height / 2;
        }
    } else if argument0 == DOOR_SIDE_BOTTOM && room_y < ds_grid_height(rooms) - 1 {
        room_y += 1;
        with oPlayer {
            x = room_width / 2;
            y = output_dist;
        }
    } else if argument0 == DOOR_SIDE_LEFT && room_x > 0 {
        room_x -= 1;
        with oPlayer {
            x = room_width - output_dist;
            y = room_height / 2;
        }
    }
    with oPlayer {
        oMain.room_entry_x = x;
        oMain.room_entry_y = y;
        break;
    }
    
    // load entities
    var ent_list = room_entities[# room_x, room_y];
    for(var i = 0; i < ds_list_size(ent_list); i++) {
        instance_activate_object(ent_list[| i]);
    }
    ds_list_clear(ent_list);
    
    // create things for new room
    if !rooms_done[# room_x, room_y] {
        xRoomGenerate();
    }
}

with oDoor {
    xDoorHideOrShow();
}

