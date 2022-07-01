/// @description ultramod
if GetPlayerUltramod() == ultramods.toxicFire
{
	with instance_create(x,y,UltraFlame)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed*2;
		friction *= 0.75;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
//TODO ultra swarm
