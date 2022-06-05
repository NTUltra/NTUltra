/// @description ultramod
var um = GetPlayerUltramod()

if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
	with instance_create(x,y,HeavyBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(5*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,HeavyBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,HeavyBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-(5*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndHeavyCrossbow);
	instance_destroy(id,false);
	with instance_create(x,y,HeavyBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction
		image_angle = direction;
		speed = other.speed+8;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.shotgunElectro
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaUpg)
		else
			snd_play_fire(sndPlasma)	
	}
	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(other.direction+(random(8)-4),1)
	image_angle = direction}
	with instance_create(x,y,ElectroBallBig)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
