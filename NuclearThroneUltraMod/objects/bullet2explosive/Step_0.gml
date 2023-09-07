/// @description Explosive sprites
image_angle = direction


if speed < 6 and sprite_index != sprExplosiveBullet2Disappear and sprite_index != sprEBullet3Disappear
{
	sprite_index = sprExplosiveBullet2Disappear
	if team != 2
		sprite_index = sprEBullet3Disappear
	image_index = 0
	image_speed = 0.4
}
else if image_index > 2 && !boomed
{
	boomed = true;
	snd_play(sndExplosionS,0.1,true);
	with instance_create(x+hspeed,y+vspeed,SmallExplosion)
	{
		scrCopyWeaponMod(other);	
	}
}

