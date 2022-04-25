/// @description ultramod
var um =GetPlayerUltramod();
if um == ultramods.plasmaBolt
{
	snd_play_fire(sndCrossbow)
	with instance_create(x,y,Bolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 18+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.plasmaRocket
{
	snd_play_fire(sndRocket)
	with instance_create(x,y,Rocket)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.bulletPlasma
{
	snd_play_fire(sndHeavyMachinegun)
	with instance_create(x,y,HeavyBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+12;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
