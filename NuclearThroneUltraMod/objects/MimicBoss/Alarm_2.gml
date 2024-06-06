/// @description Fire Bullet weapon
BackCont.shake += 1;
if ammo == 1
{
	snd_play(sndFreakBanditFire)
	wkick = 6
	with instance_create(x,y,EnemyBulletBigDiamond)
	{
		motion_add(other.gunangle,7.5);
		image_angle = direction
		team = other.team
	}
}
else
{
	wkick = 3;
	snd_play(sndEnemyFire);
	with instance_create(x, y, EnemyBullet1) {
	    motion_add(other.gunangle + random(20) - 10, 5.7 + (other.maxAmmo - other.ammo))
	    image_angle = direction
	    team = other.team
	}
}
ammo -= 1;
if ammo > 0
{
	alarm[2] = fireRate;
}
else
{
	alarm[1] = actTime * 2 + random(actTime);	
}
scrTarget()
if target != noone && instance_exists(target)
{
	gunangle = point_direction(x, y, target.x, target.y);
}
motion_add(gunangle,acc);
if ammo > maxAmmo
{
	alarm[3] = fireRate + 1;
}