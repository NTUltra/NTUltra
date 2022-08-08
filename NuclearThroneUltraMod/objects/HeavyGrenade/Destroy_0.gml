/// @description Green explosion
if (object_index == HeavyGrenade) && GetPlayerUltramod() == ultramods.bladeGrenade
	exit;
snd_play(sndExplosionL)
instance_create(x,y,GreenExplosion)