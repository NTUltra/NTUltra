if alarm[0]<1
{
	image_angle=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	if instance_exists(Player) && KeyCont.key_pick[Player.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		instance_destroy(id,false);
	}
}
