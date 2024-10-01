/// @description EXPLOSION WAZER
snd_play(sndWazerStart,0,true,false,3,false,false,0.8,false,id);
sprite_index = spr_fire;
if array_length(myLasers) > 1
{
	with myLasers[0]
	{
		event_perform(ev_alarm,0);	
	}
	with myLasers[1]
	{
		event_perform(ev_alarm,0);	
	}
}
myLasers = [];
if instance_exists(Player)
var dir = point_direction(x,y,Player.x,Player.y);
var odis = laserOffset;
var xx = x + lengthdir_x(odis,dir+90);
var yy = y + lengthdir_y(odis,dir+90);
myLasers[0] = instance_create(xx,yy,EnemyExplosionWazer);
with myLasers[0] {
	team = other.team;
	alarm[0] = other.laserDuration-5;
	owner = other.id;
	camKick = 0;
	camShake = 2;
	wkick = 0;
}
xx = x + lengthdir_x(odis,dir-90);
yy = y + lengthdir_y(odis,dir-90);
myLasers[1] = instance_create(xx,yy,EnemyExplosionWazer);
with myLasers[1] {
	team = other.team;
	alarm[0] = other.laserDuration-5;
	owner = other.id;
	camKick = 0;
	camShake = 2;
	wkick = 0;
}
alarm[1] += laserDuration;
alarm[2] = max(laserDuration,alarm[2]);
alarm[5] = laserDuration;
event_user(2);
