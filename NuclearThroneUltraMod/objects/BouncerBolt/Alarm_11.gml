/// @description Ultramod swap
x = xstart;
y = ystart;
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
	with instance_create(x,y,BouncerPlasmaBall)
	{
		nomscale += 0.3;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		maxSpeed += 10;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.rocketBolt
{
	snd_play(sndRocket,0,true);
	with instance_create(x,y,BouncerRocket)
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
		dmg ++;
		image_yscale += 0.3;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		laserhit=3;
		sprite_index=sprBouncingLaser;
		event_perform(ev_alarm,0)
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndSlugger);
	instance_destroy(id,false);
	with instance_create(x,y,Flug)
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
	repeat(6)
	{
	with instance_create(x,y,Smoke)
		motion_add(other.direction+(random(30)-15),3+random(3))
	}
	with instance_create(x,y,Bullet3)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed - 2;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet3)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-5;
		image_angle = direction;
		speed = other.speed - 2;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet3)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+5;
		image_angle = direction;
		speed = other.speed - 2;
		team = other.team;
		alarm[11] = 0;
	}
} 
