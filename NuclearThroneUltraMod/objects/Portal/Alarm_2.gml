/// @description Get rid of projectiles
if instance_exists(Player)
{
	if !inverted || Player.area > 99
	{
		with projectile
		{
			if team != Player.team
				instance_destroy()
		}
		with PopoNade
		{
			instance_destroy(id,false)
		}
		instance_create(x,y,PortalShock);
	}
}
else if !inverted
{
	instance_create(x,y,PortalShock);	
}

