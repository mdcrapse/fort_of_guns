///xStayInRoom()
/// Moves the current instance back into the room.

var margin = 40;
if x < margin {
    x = margin;
}
if x > room_width - margin {
    x = room_width - margin;
}
if y < margin {
    y = margin;
}
if y > room_height - margin {
    y = room_height - margin;
}

