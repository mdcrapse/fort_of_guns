///xHealthHurtPlayer(attacker)

if alarm[2] == -1 && alarm[5] == -1 {
    alarm[2] = hurt_cooldown;
    _health -= 1;
    if _health <= 0 {
        _health = 0;
        xGameOver();
    }
}

