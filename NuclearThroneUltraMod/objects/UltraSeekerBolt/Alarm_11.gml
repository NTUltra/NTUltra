/// @description ultramod
var um = GetPlayerUltramod();
if (um == ultramods.plasmaBolt)
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaBig)
	{
		nomscale += 0.25;
		acc += 8;
		balls = 4;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		maxSpeed += 8;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} 
else if (um == ultramods.rocketBolt)
{
	var accu = 1;
	if instance_exists(Player)
		accu = Player.accuracy;
	instance_destroy(id,false);
	with instance_create(x,y,Missile)
	{
		scrCopyWeaponMod(other);
		direction = other.direction + 6*accu;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Missile)
	{
		scrCopyWeaponMod(other);
		direction = other.direction - 6*accu;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndShotgun);
	var accu = 1;
	if instance_exists(Player)
		accu = Player.accuracy;
	var spd = speed + 10;
	repeat(3)
	with instance_create(x,y,Bullet5)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+((random(30)-15)*accu);
		image_angle = direction;
		speed = spd + random(6);
		team = other.team;
		alarm[11] = 0;
	}
}  else if um == ultramods.laserBolt
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.5;
		alarm[2] += 1;
		dmg += 0.5;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndHeavyCuber);
	with instance_create(x,y,PlayerHeavySquareBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = max(other.speed,10);
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,PlayerHeavySquareBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = max(other.speed,18);
		team = other.team;
		alarm[11] = 0;
	}
} 