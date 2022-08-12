/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,MeatExplosion)
	{
		image_xscale = 0.75;
		image_yscale = 0.75;
		dmg -= 1;
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
