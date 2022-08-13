/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.snowSwarm
{
	with instance_create(x,y,SwarmBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = 2;
		alarm[11] = 0;
		dmg = 0.5;
	}
	instance_destroy(id,false);
}
