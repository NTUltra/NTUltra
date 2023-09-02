/// @description Fire gun 2
if instance_exists(target) && target > -1
{
	gunangle = point_direction(x,y,target.x,target.y);
	snd_play(sndShotgun)
	var ang = gunangle + 15;
	with instance_create(x,y,EnemyEraserBurst)
	{
		mox = x + lengthdir_x(64,ang);
		moy = y + lengthdir_y(64,ang);
		creator = other.id
		ammo = 12
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	BackCont.shake += 1
	bwkick = 8;
	walk += 6;
}
fireSecondary = false;