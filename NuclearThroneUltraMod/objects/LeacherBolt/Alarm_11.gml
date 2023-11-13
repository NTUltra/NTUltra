/// @description ultramod
x = xprevious;
y = yprevious;
var spd = max(6,speed);
if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndMachinegun);
	var proj = Bullet1Infuse;
	if isGaseous
	{
		proj = Bullet1Toxic;
		dmg += 1;
	}
	with instance_create(x,y,proj)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = spd;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndPopgun);
	var proj = Bullet2Infuse;
	if isGaseous
	{
		proj = Bullet2Toxic
		dmg += 1;
	}
	with instance_create(x,y,proj)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = spd + 4;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.splinterElectro
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
	var proj = InfuseElectroBall;
	if isGaseous
		proj = ToxicElectroBall
	with instance_create(x,y,proj)
	{
		dmg += 1;
		if (object_index == ToxicElectroBall)
			dmg += 1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = spd;
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
		dmg += 2;
		scrCopyWeaponMod(other);
		ptime = 6;
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = spd;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.laserBolt
{
	with Player
	{
		snd_play_fire(sndLaser)
	}
	var proj = Laser;
	if isGaseous
		proj = LaserToxic
	with instance_create(x,y,proj)
	{
		image_yscale += 0.1;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
}  else if um == ultramods.rocketBolt
{
	snd_play(sndRocket,0,true);
	var proj = RocketMini;
	if isGaseous
		proj = RocketMiniToxic
	with instance_create(x,y,proj)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = spd;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}