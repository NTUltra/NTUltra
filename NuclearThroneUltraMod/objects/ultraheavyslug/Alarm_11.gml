/// @description ultramod
var um = GetPlayerUltramod()
var acc = 1;
if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	if instance_exists(Player)
		acc = Player.accuracy;
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(5*acc);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet4)
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
	snd_play_fire(sndUltraCrossbow);
	instance_destroy(id,false);
	with instance_create(x,y,UltraBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-(4*acc)
		image_angle = direction;
		speed = other.speed+8;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,UltraBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(4*acc)
		image_angle = direction;
		speed = other.speed+8;
		team = other.team;
		alarm[11] = 0;
	}
}
