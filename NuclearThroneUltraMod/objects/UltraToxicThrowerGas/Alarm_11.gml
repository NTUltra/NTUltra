/// @description ultramod
if GetPlayerUltramod() == ultramods.toxicSwarm
{
	with instance_create(x,y,UltraSwarmBolt)
	{
		scrCopyWeaponMod(other);
		hits -= 1;
		mxSpd -= 1;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}