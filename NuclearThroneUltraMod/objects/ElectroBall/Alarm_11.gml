/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.splinterElectro
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 16;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.shotgunElectro
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet2)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 11 + other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}