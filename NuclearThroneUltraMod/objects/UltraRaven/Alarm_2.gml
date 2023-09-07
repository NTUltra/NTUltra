///@description Fire
if ammo > 0
{
	snd_play(sndEnemyFire)
	wkick = 5
	var ps = projectileSpeed - ((maxAmmo - ammo) * 0.3);
	with instance_create(x,y,ExploGuardianBullet)
	{
		motion_add(
		other.gunangle + random(16)-8,
		ps);
		image_angle = direction;
		team = other.team;
	}
	ammo -= 1
	alarm[2] = 2
	alarm[1] += 3;
}