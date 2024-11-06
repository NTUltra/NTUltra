/// @description Fire Bullet weapon
BackCont.shake += 1;
scrTarget()
if target != noone && instance_exists(target)
{
	var ps = 4.6;
	if point_distance(x,y,target.x,target.y) > 200
		ps += 0.8;
	if ammo == 1
	{
		ps += 2;
		snd_play(sndFreakBanditFire)
		wkick = 6
		with instance_create(x,y,EnemyBulletBigDiamond)
		{
			motion_add(other.gunangle,ps);
			image_angle = direction
			team = other.team
		}
	}
	else
	{
		wkick = 3;
		snd_play(sndEnemyFire);
		with instance_create(x, y, EnemyBullet1) {
		    motion_add(other.gunangle + random(16) - 8, ps + (other.maxAmmo - other.ammo))
		    image_angle = direction
		    team = other.team
		}
	}
	gunangle = point_direction(x, y, target.x, target.y);
}
ammo -= 1;
if ammo > 0
{
	alarm[2] = fireRate;
}
else
{
	alarm[1] = actTime * 3 + random(actTime);	
}
motion_add(gunangle,acc);
if ammo > maxAmmo
{
	alarm[3] = fireRate + 1;
}