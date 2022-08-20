/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndSlugger);
	with instance_create(x,y,SlugExplosive)
	{
		dmg = other.dmg+2;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 12;
		friction -= 0.1;
		team = other.team;
		alarm[11] = 0;
	}
} 
