/// @description Change to ultra pellet or ultra splinter
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet5)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+4;
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
		image_yscale += 0.2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction-5;
		team = other.team
		event_perform(ev_alarm,0);
	}
	/*
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}*/
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction+5;
		team = other.team
		event_perform(ev_alarm,0);
	}
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,UltraSplinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}