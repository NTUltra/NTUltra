/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.morphFire
{
	repeat(2)
	with instance_create(x,y,Flame)
	{
		scrCopyWeaponMod(other);
		direction = random(360);
		image_angle = direction;
		speed = other.speed+2;
		team = 2;
		alarm[11] = 0;
	}
	instance_create(x,y,SmallExplosion);
	snd_play(sndExplosionS);
	instance_destroy(id,false);
}
