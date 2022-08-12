function scrBlankArmour() {
	if ultra_got[64]//BLANK ARMOUR
	{

	with enemy{
	if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{
	//if sprite_index!=spr_hurt{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	with instance_create(x,y,Flash)
	{
		alpha = 0.4;
		alarm[1] = 4;
	}
	Sleep(20);

	if place_free(x+lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180),y)
	x += lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180)
	if place_free(x,y+lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180))
	y += lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180)


	my_health -= 24;
	sprite_index = spr_hurt
	image_index = 0
	//motion_add(other.direction,6)

	//with instance_create(x,y,SharpTeeth)
	//owner=other.id;
	//}

	motion_add(other.direction+180,10);
	}}
	with projectile
	{
		if team!=other.team
		{
			if isGrenade
				instance_destroy(id,false);
			else
				instance_destroy();
		}
	}

	}



}
