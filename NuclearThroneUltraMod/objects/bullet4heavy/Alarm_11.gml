/// @description Ultra modding
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	var accura = scrGetPlayerAccuracy();
	repeat(3)
	with instance_create(x,y,Bullet5)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+(random_range(-15,15))*accura;
		image_angle = direction;
		speed = other.speed+4;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.laserBullet
{
	var accura = scrGetPlayerAccuracy();
	with Player
	{
		if Player.skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)	
	}
	instance_destroy(id,false);
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.225;
		team = other.team
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction-(5*accura);
		event_perform(ev_alarm,0);
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.3;
		dmg += 1;
		team = other.team
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		event_perform(ev_alarm,0);
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.225;
		team = other.team
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction+(5*accura);
		event_perform(ev_alarm,0);
	}
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndUltraCrossbow)
	UberCont.ultramodSwap = false;
	with instance_create(x,y,UltraBolt)
	{
		dmg = 25;
		wallsdestroyed -= 8;
		team = other.team;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 4;
		image_speed = 0.4;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
} else if um == ultramods.bulletPlasma
{
	instance_destroy(id,false);
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaBig)
	{
		acc += 3;
		maxSpeed += 6;
		scrCopyWeaponMod(other);
		ptime = 6;
		balls = 4;
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}