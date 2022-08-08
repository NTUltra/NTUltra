/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
	with instance_create(x,y,FatBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-7*acc;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,FatBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,FatBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+7*acc;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndCrossbow);
	instance_destroy(id,false);
	with instance_create(x,y,Bolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+1;
		team = other.team;
		alarm[11] = 0;
	}
}  else if um == ultramods.lightningPellet
{
	instance_destroy(id,false);
	with instance_create(x,y,SlugLightning)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}