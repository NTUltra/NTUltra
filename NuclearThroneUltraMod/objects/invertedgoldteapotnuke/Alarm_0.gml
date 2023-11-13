/// @description Lasers why not
snd_play(sndLaser,0.01,true)
with instance_create(x,y,EnemyLaser)
{
	image_angle = other.direction;
	team = other.team
	event_perform(ev_alarm,0)
}
alarm[0] = 15;