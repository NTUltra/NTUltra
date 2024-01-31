if ammo > 0
{
	alarm[1] += 1;
	if !audio_is_playing(sndSalamanderFireLoop)
		snd_play(sndSalamanderFireLoop)
	ammo -= 1
	alarm[2] = 1
	sprite_index = spr_fire
		if ammo > 45 || ammo < 30
	            with instance_create(x,y,TrapFire)
	            {
	            motion_add(other.gunangle+random(4)-2,other.projectileSpeed)
	            team = other.team
	            }
	walk=0;
	speed=0;
	if angleleft
		gunangle += angleStep;
	else
		gunangle -= angleStep;
}
else
{
	audio_stop_sound(sndSalamanderFireLoop)
	snd_play(sndSalamanderEndFire)
	sprite_index = spr_idle
	alarm[1] = actTime+random(actTime);
}