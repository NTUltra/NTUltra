/// @description Make sure it opens
if !didOpen
{
	didOpen = true;
	spr_idle=sprVanOpenIdle;
	spr_walk=sprVanOpenIdle;
	spr_hurt=sprVanDeactivatedHurt;
	sprite_index=sprVanOpenIdle;
	image_index=0;
	if instance_exists(Player) && Player.area != 100 && !scrIsGamemode(25) && !UberCont.triedToGoHQThisLoop && Player.loops > 0
	{
		myGateway = instance_create(x,y,HQEnterance);
		with myGateway
		{
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
			image_angle = other.image_angle;
		}
	}
}