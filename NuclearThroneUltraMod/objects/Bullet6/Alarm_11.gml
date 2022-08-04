/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet1Flame)
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
	with instance_create(x,y,FlameSplinter)
	{
		dmg --;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}else if um == ultramods.shotgunElectro
{
	/*
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
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}*/
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

