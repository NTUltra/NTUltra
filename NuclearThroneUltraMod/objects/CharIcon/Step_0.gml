if KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x and UberCont.mouse__y > y-20)
{
	snd_play_2d(sndClick);
	Player.charpoints--;
	with CharIcon
		instance_destroy()

	with LevCont
		instance_destroy()
	if Player.charpoints > 0 || Player.skillpoints > 0 || Player.crownpoints > 0
	{
		instance_create(x,y,LevCont);
	}
	else
	{
		with instance_create(x,y,GenCont){
		race = Player.race;}
	}
}

