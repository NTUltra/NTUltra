/// @description Its fixed
if image_index = 0 && alarm[0]<1 && !instance_exists(BallMom) && other.object_index != PopoExplosion
{
	image_index = 1
	snd_play(sndOasisHorn);
}

alarm[6] = 5;
