/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	snd_play_fire(sndHyperSlugger)
	with instance_create(x,y,HeavySlug)
	{
		dmg = other.dmg + 25;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 32;
		team = other.team;
		alarm[11] = 0;
	}
	canDamage = false;
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndIronGun)
	with instance_create(x,y,InstantNail)
	{
		dmg += 4;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		team = other.team;
		event_perform(ev_alarm,0);
	}
	canDamage = false;
}
else if um == ultramods.laserBullet
{
	with Player
	{
		if Player.skill_got[17] = 1
			snd_play(sndLaserUpg,0.03,true);
		else
			snd_play(sndLaser,0.03,true);
	}
	instance_destroy(id,false);
	canDamage = false;
	with instance_create(x,y,Laser)
	{
		dmg += 2;
		image_yscale += 0.6;
		team = other.team
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		event_perform(ev_alarm,0);
	}
}
else if um == ultramods.bulletPlasma
{
	instance_destroy(id,false);
	canDamage = false;
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaUpg)
		else
			snd_play_fire(sndPlasma)	
	}
	with instance_create(x,y,PlasmaBall)
	{
		nomscale += 0.5;
		acc += 8;
		dmg += 3;
		maxSpeed += 10;
		scrCopyWeaponMod(other);
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}