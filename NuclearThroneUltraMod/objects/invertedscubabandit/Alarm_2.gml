/// @description SnowThrower
ammo --;
if ammo > 0
{
	repeat(2)
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.gunangle+random(30)-15,3+random(4))
			image_angle = direction
			team = other.team
		}
	alarm[2] = 1;
	alarm[1] += 1;
	walk ++;
}
else
{
	if audio_is_playing(sndSnowBlowerLoop)
		audio_stop_sound(sndSnowBlowerLoop);
}