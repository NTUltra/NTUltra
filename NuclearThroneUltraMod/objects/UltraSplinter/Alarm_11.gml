/// @description ultramod
var um = GetPlayerUltramod()
var spd = max(6,speed);
if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet5)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
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
	var proj = ElectroBall;
	if isGaseous
		proj = ToxicElectroBall
	with instance_create(x,y,proj)
	{
		dmg = other.dmg + 1;
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
		dmg += 3;
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
		image_yscale += 0.2;
		defaultPierce *= 2;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		laserhit=3;
		sprite_index=sprBouncingLaser;
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
}  else if um == ultramods.rocketBolt
{
	snd_play(sndRocket,0,true);
	var proj = BouncerRocket;
	if isGaseous
		proj = BouncerRocketToxic
	with instance_create(x,y,proj)
	{
		dmg -= 10;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = spd;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}