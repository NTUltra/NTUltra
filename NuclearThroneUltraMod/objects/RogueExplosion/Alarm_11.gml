/// @description ultramov destroy squares
var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,MeatExplosion)
	{
		dmg = other.dmg;
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		alarm[11] = 0;
		destroyAll = true;
		alarm[3] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
