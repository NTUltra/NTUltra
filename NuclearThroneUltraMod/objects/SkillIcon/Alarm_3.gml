/// @description Go up
visible = true;
if instance_exists(Player)
{
	var xx = x;
	var yy = y;
	x = Player.x;
	x = Player.x - camera_get_view_x(0) + (camera_get_view_width(0)*0.5) - xx;
	y = Player.y;
	snd_play(sndMutAppear,0.1,true,false,3,false,false,1);
	x = xx;
	y = yy;
}
else
{
	snd_play_2d(sndMutAppear,0.1,true,false,3,0.8);
}