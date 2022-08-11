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
	}
}
else if !inverted
{
	instance_create(x,y,PortalShock);	
}

