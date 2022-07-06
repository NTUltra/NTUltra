/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	with instance_create(x,y,Slug)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		friction = 0.2;
	}
} else if um == ultramods.laserBullet
{
	snd_play_fire(sndMegaLaser);
	instance_destroy(id,false);
	with instance_create(x,y,MegaLaser)
	{
		scrCopyWeaponMod(other);
		isog = false;
		dmg -= 0.5;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
}else if um == ultramods.bulletPlasma
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
		balls = 2;
		ballstep = 360/balls;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
