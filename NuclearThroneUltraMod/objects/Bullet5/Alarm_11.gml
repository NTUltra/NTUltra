/// @description Change to ultrapellet
var um = GetPlayerUltramod();
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet4)
	{
		dmg = other.dmg + 1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.lightningPellet
{
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	with instance_create(x,y,UltraLightning)
	{
		image_angle = other.direction;
		team = other.team
		ammo = 5 + round(other.speed*0.8);
		canUltraMod = false;
		dmg -= 2;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	with instance_create(x,y,UltraSplinter)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed+4;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}else if um == ultramods.shotgunSplinterElectro
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
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = clamp(speed+2,4.5,10);
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
