/// @description xxx
/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.snowSwarm
{
	with instance_create(x,y,IceFlame)
	{
		dmg += 1;
		scrCopyWeaponMod(other);
		direction = other.direction - 5;
		image_angle = direction;
		speed = other.speed + 2 + irandom(2);
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndPopgun);
	with instance_create(x,y,Bullet5)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 10 + random(5);
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.toxicSwarm
{
	with instance_create(x,y,UltraToxicThrowerGas)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 2 + irandom(2);
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
