/// @description xxx
image_angle = direction


if speed < 6 and sprite_index != sprExplosiveSlugDisappear
{
sprite_index = sprExplosiveSlugDisappear
image_index = 0
image_speed = 0.4
snd_play(sndExplosionS);
instance_create(x,y,SmallExplosion);
}

