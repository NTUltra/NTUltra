/// @description ultramod
var um = GetPlayerUltramod();
var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
if um == ultramods.plasmaBolt
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaHuge)
	{
		scrCopyWeaponMod(other);
		balls -= 2;
		dmg -= 10;
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
	with instance_create(x,y,UltraRocket)
	{
		dmg -= 20;
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
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction-(5*acc);
		team = other.team
		event_perform(ev_alarm,0);
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction+(5*acc);
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndSlugger);
	instance_destroy(id,false);
	with instance_create(x,y,UltraSlug)
	{
		scrCopyWeaponMod(other);
		dmg -= 10;
		friction = 0.4;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}