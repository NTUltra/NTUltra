/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet1Explosive)
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
	with instance_create(x,y,ExplosiveSplinter)
	{
		dmg -= choose(0,1,1,1);
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
	with instance_create(x,y,InfestElectroBall)
	{
		dmgReduction = 2;
		dmg = 3;
		electroDelay = 16;
		damageDelay += 5;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.lightningPellet
{
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	with instance_create(x,y,FlameLightning)
	{
		dmg -= 2;
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
