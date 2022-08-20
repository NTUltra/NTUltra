/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.seekerMissile
{
	instance_destroy(id,false);
	with instance_create(x,y,Missile)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	snd_play_fire(sndShotgun);
	var acc = 1;
	if instance_exists(Player)
		acc = Player.accuracy;
	var spd = speed + 10;
	repeat(5)
	with instance_create(x,y,Bullet2)
	{
		scrCopyWeaponMod(other);
		direction = other.direction+((random(30)-15)*acc);
		image_angle = direction;
		speed = spd + random(6);
		team = other.team;
		alarm[11] = 0;
	}
} 