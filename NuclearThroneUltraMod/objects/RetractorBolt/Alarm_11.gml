/// @description ultramod
x = xstart;
y = ystart;
var um = GetPlayerUltramod();
if um == ultramods.plasmaBolt
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaBallExplosive)
	{
		nomscale += 0.3;
		maxSpeed += 10;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.rocketBolt
{
	snd_play_fire(sndRocket);
	with instance_create(x,y,RocketExplosive)
	{
		if other.sprite_index == sprGoldenExplosiveBolt
			sprite_index = sprGoldenRocket
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.laserBolt
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)
	}
	with instance_create(x,y,LaserExplosive)
	{
		
		image_yscale += 0.5;
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	snd_play_fire(sndSlugger);
	instance_destroy(id,false);
	with instance_create(x,y,SlugExplosive)
	{
		scrCopyWeaponMod(other);
		friction = 0.1;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
 else if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndHeavyRevolver);
	repeat(4)
	{
	with instance_create(x,y,Smoke)
		motion_add(other.direction+(random(30)-15),3+random(3))
	}
	with instance_create(x,y,FatExplosiveBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed - 2;
		team = other.team;
		alarm[11] = 0;
	}
} 