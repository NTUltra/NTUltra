/// @description ultramod
var um = GetPlayerUltramod()

if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(6*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(3*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-(3*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-(6*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
	snd_play_fire(sndUltraCrossbow);
	instance_destroy(id,false);
	UberCont.ultramodSwap = false;
	with instance_create(x,y,UltraBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction
		image_angle = direction;
		speed = other.speed+8;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-(4*acc);
		image_angle = direction;
		speed = other.speed+8;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(4*acc);
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
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(other.direction+(random(8)-4),1)
	image_angle = direction}
	with instance_create(x,y,ElectroBallBig)
	{
		balls = 12;
		dmgReduction = 2;
		electroDelay = 16;
		damageDelay += 5;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = clamp(speed+3,4.5,10);
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.lightningPellet
{
	instance_destroy(id,false);
	var ac = 1;
	if instance_exists(Player)
		ac = Player.accuracy;
	with instance_create(x,y,SlugLightning)
	{
		scrCopyWeaponMod(other);
		direction = other.direction - 5*ac;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,SlugLightning)
	{
		scrCopyWeaponMod(other);
		direction = other.direction + 5*ac;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
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