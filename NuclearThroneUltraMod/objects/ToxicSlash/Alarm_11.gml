/// @description Additional fire ultramods
var um = GetPlayerUltramod()
if um == ultramods.fireFrost
{
	instance_destroy(id,false);
	with instance_create(x,y,FrostSlash)
	{
		alarm[11] = 0;
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		dmg = other.dmg;
		scrCopyWeaponMod(other);
	}
}
else if um == ultramods.morphFire
{
	instance_destroy(id,false);
	with instance_create(x,y,MorphSlash)
	{
		alarm[11] = 0;
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		dmg = other.dmg;
		scrCopyWeaponMod(other);
	}
}
else
	event_inherited();

