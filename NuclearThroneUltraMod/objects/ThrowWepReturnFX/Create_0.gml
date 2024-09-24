/// @description Init
alarm[0] = 5;
xx = x + random_range(8,-8);
yy = y + random_range(8,-8);
owner = -1;
if instance_exists(Player) && Player.ultra_got[53] == 1
{
	snd_play_fire(sndMegaLaser)
	var dir = point_direction(x,y,Player.x,Player.y);
	with instance_create(x,y,LaserWallDestroyer)
	{image_angle = dir+(random(8)-4)*Player.accuracy
	team = Player.team
	event_perform(ev_alarm,0)}
	BackCont.shake += 4
}