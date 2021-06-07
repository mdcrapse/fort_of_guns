///xTweenUpdate()
/// Updates all tweens.

for(var i = 0; i < global._tween_num; i++) {
    // make sure instance exists
    if !instance_exists(global._tween_inst[i]) {
        xTweenRemove(i);
        i -= 1;
        continue;
    }
    
    // check time
    if global._tween_time[i] >= global._tween_max_time[i] {
        variable_instance_set(
            global._tween_inst[i],
            global._tween_var[i],
            global._tween_end[i]);
            
        with global._tween_inst[i] {
            script_execute(global._tween_callback[i]);
        }
        xTweenRemove(i);
        continue;
    }
    global._tween_time[i] += 1;
    
    // do tween
    variable_instance_set(
        global._tween_inst[i],
        global._tween_var[i],
        variable_instance_get(
            global._tween_inst[i],
            global._tween_var[i])
        + global._tween_spd[i]);
}
