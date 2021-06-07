///scr_player_walk(xamount, yamount)

if real_dir == -1 {
    real_dir = point_direction(0, 0, argument0, argument1);
} else {
    real_dir -= angle_difference(real_dir, point_direction(0, 0, argument0, argument1)) / 2;
}
