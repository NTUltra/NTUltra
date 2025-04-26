/// @description ultramod
x = xstart;
y = ystart;
var um = GetPlayerUltramod();
if um == ultramods.plasmaBolt
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaUpg)
		else
			snd_play_fire(sndPlasma)
	}
	with instance_create(x,y,PlasmaBallFrost)
	{
		scrCopyWeaponMod(other);
		nomscale += 0.1;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		maxSpeed += 2;
	}
	instance_destroy(id,false);
} else if um == ultramods.rocketBolt
{
	snd_play(sndRocket,0,true);
	with instance_create(x,y,FrostRocket)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed * 0.25;
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
	with instance_create(x,y,FrostLaser)
	{
		image_yscale += 0.45;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt && instance_exists(Player)
{
	snd_play_fire(sndDoubleShotgun);
	instance_destroy(id,false);
	with instance_create(x,y,FrostShotgunBurst)
	{
		ultramodded = true;
		creator = Player
		ammo = 4
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}
} else if um == ultramods.boltBullet && instance_exists(Player)
{
	instance_destroy(id,false);
	with instance_create(x,y,FrostBurst)
	{
		ultramodded = true;
		creator = Player
		ammo = 7
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
} 