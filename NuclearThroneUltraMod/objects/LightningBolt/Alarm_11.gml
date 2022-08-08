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
	with instance_create(x,y,PlasmaBallLightning)
	{
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
	snd_play_fire(sndRocket);
	with instance_create(x,y,RocketLightning)
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
	if Player.skill_got[17] = 1
	{
		snd_play_fire(sndLightning3)
		snd_play_fire(sndLaserUpg)
	}
	else
	{
		snd_play_fire(sndLightning1)
		snd_play_fire(sndLaser)
	}
	with instance_create(x,y,Laser)
	{
		scrCopyWeaponMod(other);
		image_yscale -= 0.4;
		image_angle = other.direction;
		team = other.team;
		startImg = sprLightningLaserStart;
		endImg = sprLightningLaserEnd;
		sprite_index = sprLightningLaser;
		isog = false;
		event_perform(ev_alarm,0);
	}
	with instance_create(x,y,LaserLightning)
	{
		image_angle = other.direction;
		team = other.team;
		step = 48//32 originally
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndSlugger);
	instance_destroy(id,false);
	with instance_create(x,y,SlugLightning)
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