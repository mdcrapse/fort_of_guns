///xDistributeStatsRandomly(points, num_stats, stat_max)
/// Randomly distributes the `points` in an array with length equal to `num_stats`,
/// then returns it (outcome might not be completely accurate).

// create array of equal elements
var div_val = ceil(argument0 / argument1);
var indices = ds_list_create();
var arr = array_create(argument1);
for(var i = 0; i < argument1; i++) {
    ds_list_add(indices, i);
    arr[i] = div_val;
}

// randomize array
for(var i = 0; i < argument1; i++) {
    var src = irandom(argument1 - i - 1);
    var target = irandom(argument1 - 1);
    var takes = irandom(min(argument2 - arr[indices[| src]], arr[target]));
    
    arr[indices[| src]] += takes;
    arr[target] -= takes;
    
    ds_list_delete(indices, src);
}

ds_list_destroy(indices);

return arr;

