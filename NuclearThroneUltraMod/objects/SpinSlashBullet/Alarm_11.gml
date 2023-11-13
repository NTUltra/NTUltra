/// @description UltraMod
var um = GetPlayerUltramod();
x = xprevious;
y = yprevious;
if um == ultramods.bloodMelee
{
	snd_play(sndHeavyBloodPistol,0.1,true);
	var am = 14;
	var angstep = 360/am;
	var ang = image_angle + angstep
	repeat(am)
	{
		with instance_create(x,y,BloodBullet)
		{
			dmg = 3;
			scrCopyWeaponMod(other);
			direction = ang;
			image_angle = direction;
			speed = 10+(other.speed*0.5);
			team = other.team;
			alarm[11] = 0;
		}
		ang += angstep;
	}
}
else if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = 8;
	var spd = 2 + (speed*0.5) + dmg;
	var angstep = 360/am;
	var ang = image_angle + angstep
	repeat(am)
	{
		with instance_create(x,y,Tentacle)
		{
			isog = false;
			dmg = 7;//6 dmg = 1dmg
			image_angle = ang;
			team = other.team
			ammo = spd;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = ang
			}
			with instance_create(x,y,FishBoost)
			{
				motion_add(ang+random(60)-30,2+random(4) );
			}
		}
		ang += angstep;
	}
} else if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet2Heavy)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+4;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+5;
		image_angle = direction;
		speed = other.speed + 5;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-5;
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
		defaultPierce -= 4;
		image_yscale -= 0.2;
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
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,MiniPlasmaBall)
	{
		acc ++;
		dmg += 1;
		scrCopyWeaponMod(other);
		ptime = 6;
		direction = other.direction;
		originalDirection = direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
instance_destroy(id,false);
