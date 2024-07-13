/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet2Kraken)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+4;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,KrakenSplinter)
	{
		dmg += choose(0,1);
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 5;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.laserBullet
{
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
		dmg -= 1;
		startImg = sprKrakenLaserStart;
		endImg = sprKrakenLaserEnd;
		sprite_index = sprKrakenLaser;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	with instance_create(x,y,LaserKraken)
	{
		image_angle = other.direction;
		team = other.team;
		event_perform(ev_alarm,0);
	}
}
else if um == ultramods.bulletPlasma
{
	instance_destroy(id,false);
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,KrakenMiniPlasmaBall)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}