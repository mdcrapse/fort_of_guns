///xPushableUpdate()
/// Updates all the pushable instances.

xPushableClean();
for(var i = 0; i < global._pushable_num; i++) {
    var inst = global._pushable[i];
    with inst {
        script_execute(inst._pushable_scr);
    }
}

