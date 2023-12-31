/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,FreezeBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	with instance_create(x,y,FrostSplinter)
	{
		dmg -=2;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 2;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}else if um == ultramods.shotgunElectro
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaMinigunUpg)
		else
			snd_play_fire(sndPlasmaMinigun)	
	}
	with instance_create(x,y,MiniFrostCannonBall)
	{
		motion_add(other.direction,other.speed*0.8)
	}
	instance_destroy(id,false);
}
else if um == ultramods.lightningPellet
{
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	with instance_create(x,y,FrostLightning)
	{
		dmg -= 3;
		image_angle = other.direction;
		team = other.team
		ammo = 3+round(other.speed*0.8);
		canUltraMod = false;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	instance_destroy(id,false);
}
