
snd_play(sndExplosion)
with instance_create(x,y,PopoExplosion)
{
	team = other.team;
	if team == 2
		sprite_index = sprPopoExploRogue;
	else if team == 4
		sprite_index = sprPopoExploFreak;
	with myExplosionMask
	{
		team = other.team;	
	}
}

