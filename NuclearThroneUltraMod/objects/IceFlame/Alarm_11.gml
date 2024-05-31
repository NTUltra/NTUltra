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
} else if um == ultramods.fireFrost
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,HeavyFlame)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}