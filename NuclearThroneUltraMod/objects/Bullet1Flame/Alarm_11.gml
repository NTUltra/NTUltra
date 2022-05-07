/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet6)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+2;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.splinterBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,FlameSplinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.bulletPlasma
{
	instance_destroy(id,false);
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaUpg)
		else
			snd_play_fire(sndPlasma)	
	}
	with instance_create(x,y,MiniPlasmaBall)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}