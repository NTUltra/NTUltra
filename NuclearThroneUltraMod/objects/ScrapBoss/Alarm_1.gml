if ammo > 0
{
	event_user(0);
}
else
{
	event_user(3);
	spr_hurt = spr_actual_hurt;
	spr_idle = spr_stop;
	image_index = 0
	sprite_index = spr_idle
	alarm[0] = actTime*1.5
	
	if (isHardMode) {
		var am = 6;
		var ang = 0;
		var angStep = 60;
		snd_play(sndEnemyFire);
		repeat(am)
		{
			with instance_create(x,y,EnemyBullet1Square)
			{
				motion_add(ang,4)
				image_angle = direction
				team = other.team
			}
			ang += angStep;
		}
	}
}

