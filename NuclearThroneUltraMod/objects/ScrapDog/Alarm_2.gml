/// @description Fire
if ammo == maxAmmo
{
	snd_play(sndScrapDogFire);
}
else if ammo < maxAmmo - 3
{
	snd_play(sndScrapDogShot);
}
if sprite_index != spr_hurt
{
	sprite_index = spr_fire;
	image_index = 0;
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
	    motion_add(other.gunangle, other.projectileSpeed)
	    image_angle = direction
	    team = other.team
	}
}
gunangle += gunangleStep;