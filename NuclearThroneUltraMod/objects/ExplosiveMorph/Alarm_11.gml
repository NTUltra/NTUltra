/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.morphFire
{
	with instance_create(x,y,Flame)
	{
		scrCopyWeaponMod(other);
		direction = random(360);
		image_angle = direction;
		speed = other.speed+2;
		team = 2;
		alarm[11] = 0;
	}
	with instance_create(x,y,SmallExplosion)
		dmg -= 2;
	snd_play(sndExplosionS,0.1);
	instance_destroy(id,false);
}
