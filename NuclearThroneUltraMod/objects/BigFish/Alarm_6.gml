/// @description bite tackle
alarm[7] = 15;
alarm[1] = 15 + actTime * 2;
snd_play(snd_dead)
maxSpeed = chargeSpeed;
motion_add(persistent_direction, chargeSpeed);