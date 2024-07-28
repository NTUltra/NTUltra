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
} else if um == ultramods.rocketBolt
{
	instance_destroy(id,false);
	with instance_create(x,y,SeekerBolt)
	{
		dmg -= 2;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}