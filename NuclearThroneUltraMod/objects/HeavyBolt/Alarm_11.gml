/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.plasmaBolt
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
		balls = 6;
		ballstep = 360/balls;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.rocketBolt
{
	snd_play_fire(sndNukeFire);
	with instance_create(x,y,Nuke)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.laserBolt
{
	snd_play_fire(sndMegaLaser)
	with instance_create(x,y,MegaLaser)
	{
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndHeavySlugger);
	instance_destroy(id,false);
	with instance_create(x,y,HeavySlug)
	{
		scrCopyWeaponMod(other);
		friction = 0.2;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
