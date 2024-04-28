if instance_exists(Player)
{
	instance_destroy()
	instance_create(x,y,SpiralCont)
	if Player.skillpoints > 0 or Player.crownpoints > 0 or Player.charpoints > 0 or 
	(Player.ultra_got[0] && !Player.altUltra && !Player.horrorEtaken)
	{
		instance_create(0,0,BackCont)
		if random(2000) < 1//Culture
			snd_play_2d(sndYEAH,0,true,false,2,1);
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
			scrEnableBigScreen();
		
		room_speed = UberCont.normalGameSpeed;
		instance_create(x,y,LevCont)
	}
	else
	{
		instance_create(0,0,BackCont)
		if !instance_exists(GenCont)	
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
	instance_create(64,96,Menu)
}