if instance_number(enemy) = 0 or my_health < maxhealth
{
	instance_destroy(id,false);
	with instance_create(x,y,wakeObject)
	{
		snd_play(sndAssassinGetUp);
		my_health = other.my_health;
		alarm[1] = 5;
		existTime = 30;
	}
}

