/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion
{
	UberCont.ultramodSwap = false;
	var ang = random(360);
	var angStep = 90;
	var dis = 48;
	with instance_create(x,y,MeatExplosion)
		{
			dmg = max(0.5,other.dmg * 0.2);
			direction = other.direction;
			image_angle = other.image_angle;
			speed = other.speed;
			alarm[11] = 0;
			alarm[3] = 0;
		}
	repeat(4)
	{
		with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),MeatExplosion)
		{
			dmg = max(0.5,other.dmg * 0.2);
			direction = other.direction;
			image_angle = other.image_angle;
			speed = other.speed;
			alarm[11] = 0;
			alarm[3] = 0;
		}
		ang += angStep;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
