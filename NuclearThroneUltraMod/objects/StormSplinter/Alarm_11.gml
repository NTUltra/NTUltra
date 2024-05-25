/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndPopgun);
	with instance_create(x,y,Bullet3Storm)
	{
		isGaseous = other.isGaseous;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed-3;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet2Storm)
	{
		isGaseous = other.isGaseous;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 4;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunSplinterElectro
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(other.direction+(random(8)-4),1)
	image_angle = direction}
	var proj = ElectroBall
	if isGaseous
		proj = ToxicElectroBall
	with instance_create(x,y,proj)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.plasmaBolt
{
	instance_destroy(id,false);
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	var proj = MiniPlasmaBall;
	if isGaseous
		proj = ToxicMiniPlasmaBall
	with instance_create(x,y,proj)
	{
		nomscale += 0.1;
		scrCopyWeaponMod(other);
		ptime = 6;
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.rocketBolt
{
	snd_play(sndRocket,0,true);
	with instance_create(x,y,RocketMiniStorm)
	{
		isGaseous = other.isGaseous;
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
		snd_play_fire(sndLightning1)
		snd_play_fire(sndLaser)
	}
	var proj = Laser;
	if isGaseous
		proj = LaserToxic
	with instance_create(x,y,proj)
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
	var xx = x + lengthdir_x(random(32),direction);
	var yy = y + lengthdir_y(random(32),direction);
	if collision_line(x,y,xx,yy,Wall,false,false) == noone
	with instance_create(xx,yy,LaserLightning)
	{
		delay = 4 +irandom(2);
		image_angle = other.direction;
		team = other.team;
		step = 48+random(64)//32 originally
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
}  
