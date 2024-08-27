/// @description Get rid of projectiles
if instance_exists(Player)
{
	if !inverted
	{
		with PopoNade
		{
			instance_destroy(id,false)
		}
		with projectile
		{
			if team != Player.team
				instance_destroy()
		}
		instance_create(x,y,PortalShock);
		with instance_create(x,y,WallBreakLine)
		{
			image_angle = point_direction(x,y,Player.x,Player.y);
			image_xscale = point_distance(x,y,Player.x,Player.y);
		}
	}
}
else if !inverted
{
	instance_create(x,y,PortalShock);	
}

