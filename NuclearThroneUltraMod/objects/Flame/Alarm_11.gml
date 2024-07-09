/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.morphFire
{
	UberCont.ultramodSwap = false;
	with instance_create(x+(hspeed*2),y+(vspeed*2),Morph)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed*2;
		alarm[0] -= 1;
		dmg -= 0.6;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
} else if um == ultramods.fireFrost
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,IceFlame)
	{
		dmg = other.dmg - 0.25;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
