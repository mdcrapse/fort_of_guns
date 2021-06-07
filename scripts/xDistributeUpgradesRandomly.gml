///xDistributeUpgradesRandomly(points, [var_name, stat_cost, stat_max], ...)

// TODO: optimize for speed

var num_stats = (argument_count - 1) / 3;
var stats = ds_list_create();
for(var i = 0; i < num_stats; i++) {
    ds_list_add(stats, i);
    variable_instance_set(id, argument[1 + i * 3], 0);
}

// randomly upgrade
while ds_list_size(stats) > 0 && argument[0] > 0 {
    var target = irandom(ds_list_size(stats) - 1);
    var arg_pos = 1 + stats[| target] * 3;
    var stat_name = argument[arg_pos];
    var stat_cost = argument[arg_pos + 1];
    var stat_max = argument[arg_pos + 2];
    
    if argument[0] >= stat_cost
        && variable_instance_get(id, stat_name) < stat_max
    {
        argument[0] -= stat_cost;
        variable_instance_set(
            id,
            stat_name,
            variable_instance_get(id, stat_name) + 1
        );
    } else {
        ds_list_delete(stats, target);
    }
}

ds_list_destroy(stats);

for(var i = 0; i < num_stats; i++) {
    show_debug_message(argument[1 + i * 3] + ": " + string(variable_instance_get(id, argument[1 + i * 3])));
}
show_debug_message("...");

