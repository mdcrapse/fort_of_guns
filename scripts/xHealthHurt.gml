///xHealthHurt(victim, attacker)
/// Hurts the specified instance.

if xHealthExists(argument0) {
    with argument0 {
        script_execute(_health_hurt_scr, argument1);
    }
}

