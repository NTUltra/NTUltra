/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	UberCont.ultramodSwap = false;
	snd_play(choose(sndSword1,sndSword2),0.1,true)
	with instance_create(x,y,LanceShank)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+Player.bettermelee)*3
		motion_add(direction,2+longarms)
		image_angle = direction;
		team = other.team
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
else if um == ultramods.bulletShotgun
{
	if instance_exists(Player) && Player.ultra_got[74] && Player.altUltra
	{
		with instance_create(x,y,Bullet2BloodSkeletonWallPierce)
		{
			scrCopyWeaponMod(other);
			mask_index = mskHeavyBloodBullet;
			sprite_index = sprHeavyBloodBullet2;
			dmg += 3;
			direction = other.direction;
			image_angle = direction;
			speed = other.speed + 1;
			team = other.team;
			alarm[11] = 0;
		}
	}
	else
	{
		with instance_create(x,y,Bullet2Blood)
		{
			scrCopyWeaponMod(other);
			dmg += 3;
			mask_index = mskHeavyBloodBullet;
			sprite_index = sprHeavyBloodBullet2;
			direction = other.direction;
			image_angle = direction;
			speed = other.speed + 1;
			team = other.team;
			alarm[11] = 0;
		}
	}
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,BloodSplinter)
	{
		scrCopyWeaponMod(other);
		dmg += 3;
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
	with instance_create(x,y,BloodLaser)
	{
		dmg -= 1;
		defaultPierce -= 16;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
}
else if um == ultramods.bulletPlasma
{
	instance_destroy(id,false);
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndBloodPlasmaUpg)
		else
			snd_play_fire(sndBloodPlasma)	
	}
	with instance_create(x,y,BloodPlasmaBall)
	{
		dmg -= 2;
		scrCopyWeaponMod(other);
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}