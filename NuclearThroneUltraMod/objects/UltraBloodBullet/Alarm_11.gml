/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	UberCont.ultramodSwap = false;
	snd_play(choose(sndSword1,sndSword2),0.1,true)
	with instance_create(x,y,UltraLanceShank)
	{
		scrCopyWeaponMod(other);
		dmg = other.dmg;
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
			sprite_index = sprUltraBloodBullet2;
			dmg = other.dmg;
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
			dmg = other.dmg;
			mask_index = mskHeavyBloodBullet;
			sprite_index = sprUltraBloodBullet2;
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
	snd_play_fire(sndUltraCrossbow)
	snd_play_fire(sndSplinterGun)
	if instance_exists(Player) && Player.skill_got[15]
		with instance_create(x,y,UltraBloodSplinterSkeletonWallPierce)
		{
			scrCopyWeaponMod(other);
			direction = other.direction;
			image_angle = direction;
			speed = other.speed + 5;
			team = other.team;
			alarm[11] = 0;
		}
	else
		with instance_create(x,y,UltraBloodSplinter)
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
	with instance_create(x,y,BloodLaser)
	{
		dmg += 1;
		image_yscale += 0.5;
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
	if instance_exists(Player)
	with instance_create(x,y,BloodPlasmaBurst)
	{
		ultramodded = true;
		creator = Player
		ammo = 3;
		maxAmmo = ammo;
		time = 1
		team = other.team
		if instance_exists(Player) && Player.skill_got[42]
		{
			if !boosted
			{
				ammo = ceil(ammo*Player.betterTail);
				time = max(1,time - 1);
				if Player.ultra_got[97] && !Player.altUltra
					time = 1;
				if alarm[0] > time
					alarm[0] = time;
				boosted = true;
				scrActivateTail(Player.drawTail);
			}
			with Player
			{
				if !drawTail
				{
					drawTailIntro = 2;
				}
			}
		}
	
		event_perform(ev_alarm,0)
	}
	
}