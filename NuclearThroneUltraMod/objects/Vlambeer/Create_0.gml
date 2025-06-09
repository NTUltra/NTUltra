p = 0;
if instance_exists(Credits)
	exit;
if instance_exists(Player)
{
	if Player.area == 1 && instance_exists(UberCont) && UberCont.about_to_unlock_alt_routes && !instance_exists(Tutorializer) && !scrIsGamemode(26) && !scrIsGamemode(27)
	{
		rememberArea = Player.area;
		with all
		{
			if (object_index != BackCont && 
			object_index != TopCont &&
			object_index != Cursor &&
			object_index != UberCont &&
			object_index != FPSHACK &&
			object_index != KeyCont &&
			object_index != GameRender &&
			object_index != MusCont &&
			object_index != UberCont)
			{
				with UberCont
				{
					ds_list_add(keepDeactive,other.id);
				}
			}
		}
		instance_deactivate_all(true);
		alarm[2] = 1;
		exit;
	}
	else
	{
		instance_destroy()
		instance_create(x,y,SpiralCont)
		if ((Player.skillpoints > 0 && !UberCont.voidChallengeGoing[4]) or Player.crownpoints > 0 or Player.charpoints > 0 or (Player.rerollpoints > 0 && scrHasEnoughMutations()) ||
		(Player.ultra_got[0] && !Player.altUltra && !Player.horrorEtaken && !UberCont.voidChallengeGoing[4])
		or (!UberCont.voidChallengeGoing[4] && (Player.getVision or Player.refundPoints > 0))
		)
		{
			instance_create(0,0,BackCont)
			if random(3000) < 1//Culture
				snd_play_2d(sndYEAH,0,true,false,2,1);
			if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
				scrEnableBigScreen();
		
			room_speed = UberCont.normalGameSpeed;
			instance_create(x,y,LevCont);
		}
		else
		{
			instance_create(0,0,BackCont)
			if !instance_exists(GenCont)	
				with instance_create(x,y,GenCont)
					race = Player.race
		}
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
	if UberCont.isHalloween
		snd_play_2d(sndHalloweenWolf)
	else
		snd_play_2d(sndVlambeer)
	instance_create(x,y,MenuGen)
	instance_create(64,96,Menu)
	with UberCont
	{
		runRace = [];
		runScore = [];
	}
}