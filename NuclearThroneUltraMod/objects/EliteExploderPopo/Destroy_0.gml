if droprate > 0
{
	scrDrop(droprate,0,false,0,0,true);
}

event_inherited()

scrPopoDead();
if !sleeping && existTime > 30
{
	with instance_create(x,y,PopoNade)
	{
		team = other.team;
		if team == 2
		{
			sprite_index = sprPopoNadeRogue;
		}
	}
	snd_play(sndExplosion)
	with instance_create(x,y,PopoExplosion)
	{
		team = other.team;
		if team == 2 && other.sprite_index == sprPopoNadeRogue
			sprite_index = sprPopoExploRogue;
		else if team == 4
			sprite_index = sprPopoExploFreak;
		with myExplosionMask
		{
			team = other.team;	
		}
	}
}