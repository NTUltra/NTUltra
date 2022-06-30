/// @description Sounds after repos
snd_play_2d(sndPortalOpen);
var snd = sndPortalAppear;
if inverted
	snd = sndInvertedPortalAppear;
var xx = x;
var yy = y;
if instance_exists(Player)
{
	var dis = 48;
	if point_distance(Player.x,Player.y,x,y) > dis
	{
		var dir = point_direction(Player.x,Player.y,x,y);
		x = Player.x + lengthdir_x(dis,dir);
		y = Player.y + lengthdir_y(dis,dir);
		snd_play(snd);
		x = xx;
		y = yy;
	}
	else
	{
		snd_play(snd);
	}
}
else
{
	snd_play(snd);
}
snd_loop(sndPortalLoop)