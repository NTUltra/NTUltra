/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.morphFire
{
	UberCont.ultramodSwap = false;
	with instance_create(x+(hspeed*2),y+(vspeed*2),UltraMorph)
	{
		dmg -= 1.8;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed*2 + 2;
		alarm[0] = max(alarm[0] - 3, 1);
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}