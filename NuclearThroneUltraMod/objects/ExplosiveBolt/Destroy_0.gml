if isBigBoom
{
	instance_create(x+lengthdir_x(12,image_angle),y+lengthdir_y(12,image_angle),Explosion);
	snd_play(sndExplosion)
}
else
{
	instance_create(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),SmallExplosion);
	snd_play(sndExplosionS)
}