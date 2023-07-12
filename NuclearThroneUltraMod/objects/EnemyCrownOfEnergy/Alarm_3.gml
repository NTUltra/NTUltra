/// @description Fire
snd_play(sndLaser,0.1,true)
with instance_create(x,y,EnemyLaser)
{
	image_angle = other.gunangle;
	team = other.team;
	event_perform(ev_alarm,0)
}