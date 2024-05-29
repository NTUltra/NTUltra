/// @description Shoot em
snd_play(sndGruntFire);
var ps = projectileSpeed + ((maxAmmo - ammo) * 0.4);
with instance_create(x, y, EnemyBullet1Square) {
	sprite_index = sprIDPDSquareBullet;
	onlyHitPlayerTeam = true;
    motion_add(other.gunangle - other.bulletOffset + random(10) - 5, ps)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1Square) {
	sprite_index = sprIDPDSquareBullet;
	onlyHitPlayerTeam = true;
    motion_add(other.gunangle + other.bulletOffset + random(10) - 5, ps)
    image_angle = direction
    team = other.team
}
ammo --;
bulletOffset -= offsetStep;
if ammo > 0
{
	alarm[2] = fireRate;
	alarm[1] += actDelayOnFire;
	with IDPDFreak
	{
		alarm[1] += actDelayOnFire;	
	}
}
else
{
	ammo = maxAmmo;
	bulletOffset = bulletMaxOffset;
}
