/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.morphFire
{
	repeat(choose(1,2))
	with instance_create(x,y,UltraFlame)
	{
		scrCopyWeaponMod(other);
		direction = random(360);
		image_angle = direction;
		speed = other.speed+2;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.toxicMorph
{
	repeat(choose(1,2))
	with instance_create(x,y,UltraToxicThrowerGas)
	{
		scrCopyWeaponMod(other);
		direction = random(360);
		image_angle = direction;
		speed = other.speed+2;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
