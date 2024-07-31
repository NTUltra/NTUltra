/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.laserBullet
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
		//image_yscale+=0.2;
		image_yscale -= 0.1;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
} else if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet2Heavy)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.bulletPlasma
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaUpg)
		else
			snd_play_fire(sndPlasma)
	}
	with instance_create(x,y,PlasmaBall)
	{
		dmg -= 3;
		acc += 3;
		maxSpeed += 6;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+2;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-2;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}