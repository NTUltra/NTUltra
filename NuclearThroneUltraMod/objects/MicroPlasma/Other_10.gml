/// @description ultramod
var um =GetPlayerUltramod();
if um == ultramods.plasmaBolt
{
	UberCont.ultramodSwap = false;
	snd_play_fire(sndCrossbow)
	with instance_create(x,y,Nail)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 19;
		team = other.team;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
	canDamage = false;
}
else if um == ultramods.plasmaRocket
{
	snd_play_fire(sndRocket)
	with instance_create(x,y,RocketMini)
	{
		dmg = 1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 19;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
	canDamage = false;
} else if um == ultramods.bulletPlasma
{
	snd_play_fire(sndMachinegun);
	with instance_create(x,y,PlayerSquareBullet)
	{
		dmg -= 1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 18
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
	canDamage = false;
}