///xGunInit(num_guns)
/// Initializes all of the guns in the game.

if variable_global_exists("_gun") {
    xGunFree();
}

global._gun = array_create(argument0);
for(var i = 0; i < argument0; i++) {
    global._gun[i] = instance_create(0, 0, oGun);
}

