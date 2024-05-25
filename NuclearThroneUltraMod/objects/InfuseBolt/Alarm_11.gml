/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet1Infuse)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = max(16,other.speed);
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet2Infuse)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 4;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunSplinterElectro
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
	with instance_create(x,y,InfuseElectroBall)
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