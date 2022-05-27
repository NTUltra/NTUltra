/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.plasmaRocket
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaBig)
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
else if um == ultramods.rocketBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndHeavyCrossbow)
	with instance_create(x,y,HeavyBolt)
	{
		scrCopyWeaponMod(other);
		motion_add(other.image_angle,24+other.speed)
		image_angle = direction
		team = other.team
		alarm[11] = 0;
	}
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction-3;
		image_angle = direction;
		speed = 24+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Splinter)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+3;
		image_angle = direction;
		speed = 24+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
