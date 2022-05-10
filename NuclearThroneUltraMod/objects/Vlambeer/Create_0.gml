if instance_exists(Player)
{
	instance_destroy()
	instance_create(x,y,SpiralCont)
	if Player.skillpoints > 0 or Player.crownpoints > 0
	{
		instance_create(0,0,BackCont)
		instance_create(x,y,LevCont)
	}
	else
	{
		instance_create(0,0,BackCont)
		with instance_create(x,y,GenCont)
			race = Player.race
	}
}
else
{
	if instance_exists(MusCont)
	{
		with MusCont
		instance_destroy()
	}
	instance_create(x,y,MusCont);

	mode = 0
	snd_play(sndVlambeer)
	instance_create(x,y,MenuGen)
}
randomize();
