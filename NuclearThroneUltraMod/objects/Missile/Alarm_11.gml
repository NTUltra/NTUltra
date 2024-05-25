/// @description ultramod
if GetPlayerUltramod() == ultramods.rocketBolt
{
	instance_destroy(id,false);
	with instance_create(x,y,SeekerBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}