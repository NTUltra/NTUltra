if !instance_exists(Menu) || Menu.widescreen < 50 || !instance_exists(BackCont) || instance_exists(UnlockingCharacter)
	exit;
if visible && (KeyCont.key_fire[p] = 1|| KeyCont.key_pick[p] == 1) and OptionSelect.selected = 0 and OptionSelect2.selected = 0 and StatsSelect.selected = 0 and CreditsSelect.selected = 0 and UpdateChecker.selected = 0
{
if button = 0
button = 1
else
button = 2
}
else
button = 0
//y+34 moet 24
var hovering = (mouse_x > x and mouse_x < x+16 and mouse_y > y and mouse_y < y+24)
if hovering
{
	selected = false;	
}
if Menu.camLerp >= 1 && button = 1 and (selected || hovering) and image_index != racemax+1 and image_speed = 0 && UberCont.race_have[num]==1
{
    if Menu.race = num
    {
    with Menu
    {
    switch (race)
    {
    case 0:
    snd_cnfm=sndMutant0Cnfm;
    break;
    case 1:
    snd_cnfm=sndMutant1Cnfm;
    break;
    case 2:
    snd_cnfm=sndMutant2Cnfm;
    break;
    case 3:
    snd_cnfm=sndMutant3Cnfm;
    break;
    case 4:
    snd_cnfm=sndMutant4Cnfm;
    break;
    case 5:
    snd_cnfm=sndMutant5Cnfm;
    break;
    case 6:
    snd_cnfm=sndMutant6Cnfm;
    break;
    case 7:
    snd_cnfm=sndMutant7Cnfm;
    break;
    case 8:
    snd_cnfm=sndMutant8Cnfm;
    break;
    case 9:
    snd_cnfm=sndMutant9Cnfm;
    break;
    case 10:
    snd_cnfm=sndMutant10Cnfm;
    break;
    case 11:
    snd_cnfm=sndSniperFire;
    break;
    case 12:
    snd_cnfm=sndMutant12Cnfm;
    break;
    case 13:
    snd_cnfm=sndSheepDead;
    break;
    case 14:
    snd_cnfm=sndPandaHit;
    break;
    case 15:
    snd_cnfm=sndMutant15Cnfm;
    break;
    case 16:
    snd_cnfm=false;
    break;
    case 17:
    snd_cnfm=sndGunSmithLowHP;
    break;
    case 18:
    snd_cnfm=sndStatueXP;
    break;
    case 19:
    snd_cnfm=sndMutant19Cnfm;
    break;
    case 20:
    snd_cnfm=sndMutant20Cnfm;
    break;
    case 21:
    snd_cnfm=sndMutant11Cnfm;
    break;
    case 22:
    snd_cnfm=sndMutant22Cnfm;
    break;
    case 23:
    snd_cnfm=sndMutant23Cnfm;
    break;
    case 24:
    snd_cnfm=sndMutant24NewSlct;
    break;
    case 25:
    snd_cnfm=sndRavenLand;
    break;
    case 26:
    snd_cnfm=sndMutant26Cnfm;
    break;
	case 27:
    snd_cnfm=sndMutant27Cnfm;
    break;
	case 28:
    snd_cnfm=sndMutant27Cnfm;
    break;
	case 29:
    snd_cnfm=sndMutant27Cnfm;
    break;
    
    }
    
	with MusCont {
		confirmSound = other.snd_cnfm;
		scrStopAmbience();
		scrStopSong();
	}
	
    UberCont.racepick = Menu.race
	var ranChar = false;
    if race = 0 || scrIsGamemode(23)
    {
		ranChar = true;
		do {race = 1+irandom(racemax-1);} until UberCont.race_have[race] = 1
	}
	with UberCont
	{
		if scrIsGamemode(43)
			canMultiCrown = true;
		else
			canMultiCrown = false;
	}
    if crown = 0
    crown = ceil(random(crownmax))
	draw_texture_flush();//mainly used to only remove the main menu texture page cause we don't need that while in game.
	UberCont.race = race
	if !instance_exists(GenCont)
	    with instance_create(x,y,GenCont)
	    {race = other.race
	    crown = other.crown}
	with UberCont {
		scrLoadCustomSurvivalArena();
		lastwishused=false;
		routeString = "";
		time_frame = 0;
		time_microseconds=0;
		time_seconds=0;
		time_minutes=0;
		time_hours=0;
		if scrIsGamemode(47)
		{
			if opt_gm_char_active == 0
			{
				do {useRaceActive = 1+irandom(racemax-1);} until (race_have[useRaceActive] = 1)
				with instance_create(x,y,UnlockPopup)
					mytext=other.race_name[other.useRaceActive];
			}
			else
			{
				useRaceActive = opt_gm_char_active
			}
		}
	}
    instance_create(x,y,Player);
	//Start settings save
	with UberCont
	{
		scrSave();
	}
	with Player
	{
		firstLoad = true;
		restarted = true;
		randomlySelected = ranChar;
	}
	if !instance_exists(StartDaily)
		room_restart();
    exit;
    }
    }
    else
    {
    switch (num)
    {
    case 0:
    snd_slct=sndMutant0Slct;
    break;
    case 1:
    snd_slct=sndMutant1Slct;
    break;
    case 2:
    snd_slct=sndMutant2Slct;
    break;
    case 3:
    snd_slct=sndMutant3Slct;
    break;
    case 4:
    snd_slct=sndMutant4Slct;
    break;
    case 5:
    snd_slct=sndMutant5Slct;
    break;
    case 6:
    snd_slct=sndMutant6Slct;
    break;
    case 7:
    snd_slct=sndMutant7Slct;
    break;
    case 8:
    snd_slct=sndMutant8Slct;
    break;
    case 9:
    snd_slct=sndMutant9Slct;
    break;
    case 10:
    snd_slct=sndMutant10Slct;
    break;
    case 11:
    snd_slct=sndHunterSlct;
    break;
    case 12:
    snd_slct=sndMutant12Slct;
    break;
    case 13:
    snd_slct=sndSheep;
    break;
    case 14:
    snd_slct=sndMutant14Slct;
    break;
    case 15:
    snd_slct=sndMutant15Slct;
    break;
    case 16:
    snd_slct=sndMutant16Slct;
    break;
    case 17:
    snd_slct=sndMutant17Slct;
    break;
    case 18:
    snd_slct=sndStatueCharge;
    break;
    case 19:
    snd_slct=sndMutant19Slct;
    break;
    case 20:
    snd_slct=sndMutant20Slct;
    break;
    case 21:
    snd_slct=sndMutant11Slct;
    break;
    case 22:
    snd_slct=sndMutant22Slct;
    break;
    case 23:
    snd_slct=sndMutant23Slct;
    break;
    case 24:
    snd_slct=sndMutant24NewSlct;
    break;
    case 25:
    snd_slct=sndMutant25Slct; 
    break;
    case 26:
    snd_slct=sndMutant26Slct;
    break;
	case 27:
    snd_slct=sndMutant27Slct;
    break;
	case 28:
    snd_slct=sndMutant28Slct;
    break;
	case 29:
    snd_slct=sndMutant29Slct;
    break;
    
    }
    snd_play_2d(snd_slct)
    Menu.race = num
	Menu.portraitLerp = 0;
    
    with LoadoutSelect
	{
		if other.num == 0
			wepmenuopen = false;
		race = Menu.race;
		skin = UberCont.skin[race]
		wep = UberCont.selected_start_wep[race];
		if (!UberCont.secondary_start_wep[race])
			bwep = -2;
		else
			bwep = UberCont.selected_start_bwep[race]
		//UberCont.secondary_start_wep[race]
		UberCont.start_wep[0]=race_swep[race];//Starting weapon 0 is different for each character
		//Menu.skin = skin;
		event_user(0);
	}
    
    }
	with CampChar
	{
		if num == other.num
		{
			with Menu
			{
				camTargetX = other.x + other.camX - (camera_get_view_width(view_camera[0])*0.5);
				camTargetY = other.y + other.camY + 8 - (camera_get_view_height(view_camera[0])*0.5);
				camX = camera_get_view_x(view_camera[0]);
				camY = camera_get_view_y(view_camera[0]);
				camLerp = 0;
				alarm[3] = 1;
			}
			if num == 14
			{
				alarm[1] = 15;	
			}
			else
			{
				alarm[1] = 0;	
			}
		}
	}
}

