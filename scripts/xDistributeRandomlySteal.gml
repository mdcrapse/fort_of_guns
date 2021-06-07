///xDistributeRandomlySteal(points, stat_max, variable_names, ...)
/// Randomly distributes the `points` in an array with length equal to `num_stats`,
/// then returns it (outcome might not be completely accurate).

// create array of equal elements
var num_vars = argument_count - 2;
var div_val = ceil(argument[0] / num_vars);
var indices = ds_list_create();
for(var i = 0; i < num_vars; i++) {
    variable_instance_set(id, argument[2 + i], div_val);
    ds_list_add(indices, i + 2);
}

// randomize array
for(var i = 0; i < num_vars; i++) {
    var src = irandom(num_vars - i - 1);
    var target = irandom(num_vars - 1) + 2;
    var takes = irandom(min(
        argument[1] - variable_instance_get(id, argument[indices[| src]]),
        variable_instance_get(id, argument[target])
    ));
    
    variable_instance_set(
        id,
        argument[indices[| src]],
        variable_instance_get(id, argument[indices[| src]]) + takes,
    );
    variable_instance_set(
        id,
        argument[target],
        variable_instance_get(id, argument[target]) - takes,
    );
    
    ds_list_delete(indices, src);
}

/*
for(var i = 0; i < num_vars; i++) {
    show_debug_message(
        argument[2 + i] + ": " + string(variable_instance_get(id, argument[2 + i])),
    );
}
show_debug_message("...");
*/

ds_list_destroy(indices);

