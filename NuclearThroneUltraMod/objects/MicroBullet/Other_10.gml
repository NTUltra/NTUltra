/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet2)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 18;
		team = other.team;
		alarm[11] = 0;
	}
	canDamage = false;
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,Splinter)
	{
		dmg -= 1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 22;
		team = other.team;
		alarm[11] = 0;
	}
	canDamage = false;
}
else if um == ultramods.laserBullet
{
	with Player
	{
		if Player.skill_got[17] = 1
			snd_play(sndMicroLaserUpg,0.03,true);
		else
			snd_play(sndMicroLaser,0.03,true);
	}
	instance_destroy(id,false);
	canDamage = false;
	with instance_create(x,y,Laser)
	{
		team = other.team
		sprite_index = sprMicroLaser;
		knockback = 2;
		defaultPierce -= 8;
		image_yscale -= 0.3;
		dmg -= 1.5;
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
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,MiniPlasmaBall)
	{
		acc += 6;
		maxSpeed += 8;
		dmg = 1;
		scrCopyWeaponMod(other);
		ptime = 6;
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}