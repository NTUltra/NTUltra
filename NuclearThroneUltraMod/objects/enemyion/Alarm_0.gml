snd_play(sndPlasmaHit,0.1,true)

with instance_create(x,y,PopoPlasmaImpact)
{
	dmg = 4;
	sprite_index = sprEnemyPlasmaImpact;
	team = other.team;
}

instance_destroy();