if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
{
	x = xstart+54;	
} else
	x = xstart;
if (KeyCont.key_spec[p] == 1 && !instance_exists(UnlockingSecondRow) && (crown == 21 || crown == 35))
{
	secretToggle = !secretToggle;
	if secretToggle
	{
		image_index = 35;
		crown = 35;
	}
	else
	{
		image_index = 21;
		crown = 21;
	}
	
}
if KeyCont.key_swap[p] == 1
{
	if crown == 19 && scrMeleeWeapons(Player.bwep)
	{
		crown = 40;//CROWN OF THOUSAND CUTS
		image_index = 40;
	}
	else if crown == 40 && !scrMeleeWeapons(Player.bwep)
	{
		crown = 19;
		image_index = 19;
	}
}
if crown == 18 || crown == 38 || crown == 42
{
	if (Player.ammo[Player.wep_type[Player.wep]] >= Player.typ_amax[Player.wep_type[Player.wep]] * 0.9)
	{
		crown = 38;//CROWN OF ABUNDANCE
	}
	else if (Player.ammo[Player.wep_type[Player.wep]] <= max(Player.typ_amax[Player.wep_type[Player.wep]] * 0.1,Player.wep_cost[Player.wep]))
	{
		crown = 42;//CROWN OF SCARSCITY
	}
	else
	{
		crown = 18;//Crown of greed
	}
	image_index = crown;
}
if  KeyCont.key_fire[p] = 1 && !instance_exists(UnlockingSecondRow) && (UberCont.mouse__x < x+10 and UberCont.mouse__y < y+16 + yOffset and UberCont.mouse__x > x-10 and UberCont.mouse__y > y-16 + yOffset)
{
	KeyCont.key_fire[p] = 2;
	if instance_exists(MultiCrownMenu) && scrIsCrown(crown)
		snd_play_2d(sndClickBack);
	else
		snd_play_2d(sndClick);
	if !instance_exists(MultiCrownMenu) || (canReAdd || scrIsCrown(crown))
	{
		event_user(0);
	}
	else
	{
		with MultiCrownMenu
		{
			selectedCrown = other.crown;
			selectedCrownSprite = other.sprite_index;
		}	
	}
}

