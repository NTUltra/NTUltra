/// @description ultramod
x = xprevious;
y = yprevious;
mask_index = myMask;
visible = true;
var um = GetPlayerUltramod();
image_speed = 0.4;
if um == ultramods.plasmaBolt
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaBall)
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
	snd_play(sndRocket,0,true);
	with instance_create(x,y,RocketMini)
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
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)
	}
	with instance_create(x,y,Laser)
	{
		image_yscale += 0.1;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndSlugger);
	instance_destroy(id,false);
	with instance_create(x,y,Slug)
	{
		scrCopyWeaponMod(other);
		friction = 0.2;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndHeavyRevolver);
	repeat(4)
	{
	with instance_create(x,y,Smoke)
		motion_add(other.direction+(random(30)-15),3+random(3))
	}
	with instance_create(x,y,FatToxicBullet)
	{
		dmg ++;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed - 2;
		team = other.team;
		alarm[11] = 0;
	}
} 