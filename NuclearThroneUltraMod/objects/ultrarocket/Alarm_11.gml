/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.plasmaRocket
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaUpg)
		else
			snd_play_fire(sndPlasma)
	}
	with instance_create(x,y,PlasmaHuge)
	{
		balls --;
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
	audio_stop_sound(sndRocket);
	snd_play_fire(sndUltraCrossbow)
	with instance_create(x,y,UltraBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 24+other.speed;
		team = other.team;
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
	instance_destroy(id,false);
}