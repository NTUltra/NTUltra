/// @description Change to ultra pellet or ultra splinter
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet5)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = min(22,other.speed+4);
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.laserBullet
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
		image_yscale += 0.25;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		sprite_index = sprUltraLaser;
		defaultPierce *= 2;
		isUltra=true;
		dmg += 0.25;
		event_perform(ev_alarm,0);
	}
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,UltraSplinter)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}else if um == ultramods.bulletPlasma
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
		balls = 1;
		dmg -= 2;
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}