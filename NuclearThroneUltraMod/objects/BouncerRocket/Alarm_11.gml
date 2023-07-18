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
	with instance_create(x,y,BouncerPlasmaBall)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} if um == ultramods.rocketBolt
{
	audio_stop_sound(sndRocket);
	snd_play_fire(sndCrossbow)
	with instance_create(x,y,BouncerBolt)
	{
		dmg += 10
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 24+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}