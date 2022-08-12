/// @description Change to director pellet
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet7)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+2;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSwarm)
	with instance_create(x,y,SwarmBolt)
	{
		hits = 2;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
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
		image_yscale -= 0.4;
		laserhit=2;
		sprite_index=sprBouncingLaser;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
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
	with instance_create(x,y,RedirectorPlasmaBall)
	{
		dmg = 1;
		nomscale = 0.8;
		image_xscale = 0.8;
		image_yscale = 0.8;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}