///xZIndex()

if !variable_instance_exists(id, "_pre_depth_var_value") {
    _pre_depth_var_value = depth;
}

depth = _pre_depth_var_value + 1 - y / room_height;

