if ammo > 0
{
	snd_play(sndEnemyFire)
	wkick = 5
	with instance_create(x,y + z,ExploGuardianBullet)
	{
		motion_add(other.gunangle+random(20)-10,4)
		image_angle = direction
		team = other.team
	}
	ammo -= 1
	alarm[2] = 2
	alarm[3] += 2;
}

