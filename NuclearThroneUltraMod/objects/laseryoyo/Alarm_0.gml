/// @description Laser!
alarm[0] = 7;

snd_play(snd);
var accuracy = 1;
if instance_exists(Player)
	accuracy = Player.accuracy;
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle+90
	team = other.team
	event_perform(ev_alarm,0)
}
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle-90
	team = other.team
	event_perform(ev_alarm,0)
}
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle+180
	team = other.team
	event_perform(ev_alarm,0)
}
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle
	team = other.team
	event_perform(ev_alarm,0)
}
BackCont.shake += 2