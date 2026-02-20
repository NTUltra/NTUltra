/// @description Fire
if ammo == maxAmmo
{
	snd_play(sndScrapDogFire);
	sprite_index = spr_fire;
	image_index = 0;
}
else if ammo < maxAmmo - 3
{
	snd_play(sndScrapDogShot);
}
if ammo > 0
{
	alarm[2] = fireRate;
	ammo -= 1;
	alarm[1] = max(fireRate + actTime,alarm[1]);
}
if ammo % gap != 1
{
	with instance_create(x, y, EnemyBullet1) {
	    motion_add(other.gunangle, 4)
	    image_angle = direction
	    team = other.team
	}
}
gunangle += gunangleStep;