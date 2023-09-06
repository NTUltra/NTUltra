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

