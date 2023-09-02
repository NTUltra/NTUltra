/// @description Fire gun 1
snd_play(sndEraser)
	var ang = gunangle - 15;
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
	walk += 6;
BackCont.shake += 1
wkick = 8
alarm[1] += maxReload * 2;
reload = maxReload * 2;
fireSecondary = true;