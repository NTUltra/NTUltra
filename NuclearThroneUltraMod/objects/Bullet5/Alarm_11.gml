/// @description Change to ultrapellet
var um = GetPlayerUltramod();
if um == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet4)
	{
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
		dmg -= 3;
		image_angle = other.direction;
		team = other.team
		ammo = 2 + round(other.speed*0.8);
		canUltraMod = false;
		event_perform(ev_alarm,0)
		visible = 0
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
}
