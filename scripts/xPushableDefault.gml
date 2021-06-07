///xPushableDefault()
/// Pushes the instance out of other pushable instances.
/// This is the default callback for `xPushable`.

for(var i = 0; i < global._pushable_num; i++) {
    var inst = global._pushable[i];
    if inst == id {
        continue;
    }
    if point_distance(x, y, inst.x, inst.y) < 16 {
        push_dir = point_direction(inst.x, inst.y, x, y);
        x += lengthdir_x(1, push_dir);
        y += lengthdir_y(1, push_dir);
    }
}

