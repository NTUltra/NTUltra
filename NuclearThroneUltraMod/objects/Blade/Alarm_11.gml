/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.bladeGrenade
{
	snd_play_fire(sndGrenade);
	with instance_create(x,y,Grenade)
	{
		scrCopyWeaponMod(other);
		canExplodeBlade = true;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndSlugger);
	with instance_create(x,y,Flug)
	{
		dmg = other.dmg+1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 12;
		team = other.team;
		alarm[11] = 0;
	}
} 
