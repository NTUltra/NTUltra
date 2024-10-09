/// @description Flame splinter copy
var um = GetPlayerUltramod()
if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndFlameRevolver);
	with instance_create(x,y,Bullet1Flame)
	{
		dmg ++;
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
	snd_play_fire(sndFlameRevolver);
	with instance_create(x,y,Bullet6)
	{
		dmg ++;
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
	with instance_create(x,y,MiniFlameCannonBall)
	{
		sprite_index = sprVeryMiniFlameCannonBall;
		mask_index = mskBullet2;
		bloomSprite = sprVeryMiniFlameCannonBallBloom;
		fireAmount = 1;
		fireExplosionAmount = 4;
		alarm[0] = 0;
		alarm[2] = 1+irandom(2);
		dmg = other.dmg;
		motion_add(other.direction,other.speed*0.8)
		team = other.team
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
	with instance_create(x,y,FlameMiniPlasmaBall)
	{
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		ptime = 6;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
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
	with instance_create(x,y,FlameLaser)
	{
		image_yscale -= 0.34;
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
	with instance_create(x,y,RocketMini)
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