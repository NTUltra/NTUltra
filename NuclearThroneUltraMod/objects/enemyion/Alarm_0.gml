snd_play(sndPlasmaHit,0.1,true)

with instance_create(x,y,PopoPlasmaImpact)
{
	sprite_index = sprEnemyPlasmaImpact;
	team = 0;
}

instance_destroy();