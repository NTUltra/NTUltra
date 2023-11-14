//BOUNCER BULLETS
if target != noone && instance_exists(target)
{
    gunangle = point_direction(x,y,target.x,target.y)+random(14)-7-30
    
    snd_play(sndBouncerFlakExplo)//(sndEnemyFire)
    wkick = 8
    ang = gunangle - 60;
	var r = irandom(min(3,loop))
	var angStep = 120/(3+r);
	repeat(3+r)
	{
		with instance_create(x,y,EnemyBouncerBullet)
		{
			motion_add(other.ang,3)
			image_angle = direction
			team = other.team
		}
		ang += angStep;
	}
}

