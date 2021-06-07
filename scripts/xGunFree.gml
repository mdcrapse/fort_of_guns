///xGunFree()
/// Deletes all the gun memory.

for(var i = 0; i < array_length_1d(global._gun); i++) {
    instance_destroy(global._gun[i]);
}

