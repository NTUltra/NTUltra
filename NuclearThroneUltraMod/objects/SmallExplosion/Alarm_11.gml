/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,SmallMeatExplosion)
	{
		dmg = max(1,other.dmg-1);
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		alarm[11] = 0;
		alarm[3] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
