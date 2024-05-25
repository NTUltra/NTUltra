/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
	with instance_create(x,y,Bullet1Explosive)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-7*acc;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet1Explosive)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-14*acc;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet1Explosive)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet1Explosive)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+7*acc;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet1Explosive)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+14*acc;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndCrossbow);
	instance_destroy(id,false);
	UberCont.ultramodSwap = false;
	with instance_create(x,y,ExplosiveBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+1;
		team = other.team;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
}
else if um == ultramods.shotgunSplinterElectro
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
	with instance_create(x,y,ElectroBallBig)
	{
		balls = 5;
		dmgReduction = 2;
		dmg = 3;
		electroDelay = 16;
		damageDelay += 5;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = clamp(speed+3,4.5,10);
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.lightningPellet
{
	instance_destroy(id,false);
	snd_play(choose(sndSpark1,sndSpark2),0.1,true);
	var ac = 1;
	if instance_exists(Player)
		ac = Player.accuracy;
	with instance_create(x,y,Lightning)
	{
		image_angle = other.direction - 5 * ac;
		team = other.team
		ammo = 5+round(other.speed*0.8);
		canUltraMod = false;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = other.direction;
		team = other.team
		ammo = 3+round(other.speed*0.8);
		canUltraMod = false;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = other.direction + 5*ac;
		team = other.team
		ammo = 5+round(other.speed*0.8);
		canUltraMod = false;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	instance_destroy(id,false);
}