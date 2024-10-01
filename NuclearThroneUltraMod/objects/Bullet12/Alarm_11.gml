/// @description ultramod coming soon
var um = GetPlayerUltramod()
if um == ultramods.boltBullet || um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play(choose(sndNailGun1,sndNailGun2,sndNailGun3))
	with instance_create(x,y,Nail)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 5;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.laserBullet
{
	with Player
	{
		if Player.skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)	
	}
	instance_destroy(id,false);
	with instance_create(x,y,Laser)
	{
		laserhit += 1;
		sprite_index=sprBouncingLaser;
		dmg -= 1;
		defaultPierce -= 8;
		image_yscale -= 0.5;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		alarm[2] = max(alarm[2] - 1, 1);
		event_perform(ev_alarm,0);
	}
}
else if um == ultramods.bulletPlasma
{
	instance_destroy(id,false);
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,BouncerPlasmaBall)
	{
		dmg = 1;
		acc += 2;
		maxSpeed += 4;
		scrCopyWeaponMod(other);
		ptime = 6;
		direction = other.direction;
		originalDirection = direction;
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
	with instance_create(x,y,ElectroBall)
	{
		dmgReduction = 1;
		electroDelay = 14;
		damageDelay += 4;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = clamp(speed+2,4.5,10);
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.lightningPellet
{
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	with instance_create(x,y,Lightning)
	{
		dmg -= 3;
		image_angle = other.direction;
		team = other.team
		ammo = 6 + round(other.speed*0.9);
		canUltraMod = false;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	instance_destroy(id,false);
}