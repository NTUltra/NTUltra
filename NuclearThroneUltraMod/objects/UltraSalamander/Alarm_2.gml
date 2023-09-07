///@description Fire
if ammo > 0
{
	alarm[1] += 1;
	if !audio_is_playing(sndSalamanderFireLoop)
		snd_play(sndSalamanderFireLoop)
	ammo -= 1
	alarm[2] = 1
	sprite_index = spr_fire
	with instance_create(x,y,EnemyBullet2)
	{
		motion_add(other.gunangle+random(4)-2,4)
		team = other.team
		image_angle = direction;
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
	alarm[1] = actTime*2+random(actTime*2);
}