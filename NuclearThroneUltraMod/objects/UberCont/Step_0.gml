recursionCheck = 0;
steam_update();
if !instance_exists(KeyCont) || alarm[7] > 0 || instance_exists(ShopWheel) || alarm[8] > 0 || instance_exists(SendWeekly)
	exit;
if confirmState > 0 && (mouse_check_button_pressed(mb_right) || KeyCont.key_spec[0] == 1|| gamepad_button_check(0,gp_face2))
{
	confirmState = 0;
}
if isPaused == 1
{
//QUICK RESTART
if (canRestart && isPaused == 1 && !instance_exists(PlayerSpawn) && !instance_exists(Player) && 
(
(keyboard_check_pressed(ord("R")) || gamepad_button_check(0,gp_face3)) ||
((mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1)) && confirmState == 1)
)
)//(gamepad_button_check(0,gp_stickl) && gamepad_button_check(0,gp_stickr)) )
{
	if confirmState == 1 && (mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1))
	{
		confirmState = 0;
		debug("QUICK RESTART");
		runRace = [];
		//scrEndOfRun(); already run in player destroy
		with MusCont
		{
			audio_stop_sound(song);
			audio_stop_sound(amb);
			song = musThemeA;
			amb = amb0;
		}
		with FPSHACKMenu
			instance_destroy();
		with WepPickup
		{
			instance_destroy();	
		}
		with ThrowWep
		{
			instance_destroy(id,false);	
		}
		with WeaponMod
		{
			instance_destroy(id,false);	
		}
		instance_activate_all();
		var al = ds_list_size(keepDeactive);
		for (var i = 0; i < al; i++) {
			instance_deactivate_object(keepDeactive[| i]);	
		}
		if normalGameSpeed = 30
			with FPSHACK
				instance_destroy();
		else if !instance_exists(FPSHACK)
		{
			instance_create(x,y,FPSHACK);	
		}
		alarm[2] = 1;//Some objects are only accessible after a frame
		//audio_stop_all();
		alarm[4] = 0;
		alarm[5] = 0;
		isPaused = 0
		with Cursor
		{
			visible = inGameVisibleState;
		}
		instance_create(x,y,UnPauseDelay);
		isPausedInTheDark = false;
		alarm[3] = 1;
		with UberCont
		{
			partnerDied = true;	
		}
		with Player
		{
			other.kills = kills;
			other.hard = hard;
			skeletonlives = 0;
			ultra_got[87] = 0;
			instance_destroy()
		}
		if instance_exists(SendWeekly)
		{
			alarm[8] = 1;
			exit;
		}
		else
		{
			event_perform(ev_alarm,8);	
		}
	}
	else
	{
		confirmState = 1;
		exit;
	}
}
// instance_activate_object(KeyCont)
//RETURN TO GAME
if (KeyCont.key_paus[0] = 1) ||
(mouse_check_button_pressed(mb_right) || gamepad_button_check(0,gp_face2))
{
	if loadRunMenuState == 1
	{
		loadRunMenuState = 0;
		snd_play_2d(sndClickBack);
		exit;
	}
	if ultraMenuOpen
	{
		ultraMenuOpen = false;
		exit;
	}
	KeyCont.key_spec[0] = 2;
	with option
		instance_destroy()

	with FPSHACKMenu
		instance_destroy();
	instance_activate_all();
	var al = ds_list_size(keepDeactive);
	for (var i = 0; i < al; i++) {
		instance_deactivate_object(keepDeactive[| i]);	
	}
	if normalGameSpeed == 30
		with FPSHACK
			instance_destroy();
	else if !instance_exists(FPSHACK)
	{
		instance_create(x,y,FPSHACK);	
	}
	//with TopCont
	//bloomAlpha=UberCont.opt_bloom;
	/*
	if(instance_exists(Marker)){
	Cursor.image_index=UberCont.opt_crosshair;
	}else{
	Cursor.image_index=UberCont.opt_crosshair;}
	*/
	isPaused = 0
	instance_create(x,y,UnPauseDelay);
	isPausedInTheDark = false;
	alarm[4] = 0;
	alarm[5] = 0;
	alarm[3] = 1;
	audio_resume_all();
}
//RETURN TO MENU
	if (
	((keyboard_check_pressed(vk_enter) or gamepad_button_check(0,gp_face4)) ||
	((mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1)) && confirmState == 2))
	&& !instance_exists(PlayerSpawn) && !instance_exists(StartDaily)
	)
	{
		if (confirmState == 2 && (mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1)))
		{
			confirmState = 0;
			/*
			if isLeaderboardGamemode
			{
				opt_gamemode = [0];
				debug("reset gm!");
			}
			*/
			with UberCont
			{
				partnerDied = true;	
			}
			with FPSHACKMenu
				instance_destroy();
			instance_activate_all();
			var al = ds_list_size(keepDeactive);
			for (var i = 0; i < al; i++) {
				instance_deactivate_object(keepDeactive[| i]);	
			}
			if normalGameSpeed = 30
				with FPSHACK
					instance_destroy();
			else if !instance_exists(FPSHACK)
			{
				instance_create(x,y,FPSHACK);	
			}
			isPaused = 0
			instance_create(x,y,UnPauseDelay);
			isPausedInTheDark = false;
			alarm[4] = 0;
			alarm[5] = 0;
			alarm[3] = 1;
			//audio_stop_all();
			if instance_exists(Player)
				kills=Player.kills
			with UberCont
			{
				partnerDied = true;	
			}
			with Player
			{
				skeletonlives = 0;
				ultra_got[87] = 0;
				instance_destroy()
			}
			scrSave();
			if instance_exists(SendWeekly)
			{
				alarm[9] = 1;
				exit;
			}
			else
			{
				event_perform(ev_alarm,9);	
			}
		}
		else
		{
			confirmState = 2;
			exit;
		}
	}
	//QUIT
	if ( keyboard_check_pressed(ord("Q")) or ( gamepad_button_check(0,gp_shoulderr) && gamepad_button_check(0,gp_shoulderrb) 
	&& gamepad_button_check(0,gp_shoulderl) && gamepad_button_check(0,gp_shoulderlb) ) ||
	((mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1)) && confirmState == 2)
	)
	{
		if confirmState == 2 && (mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1))
		{
			confirmState = 0;
			if (UberCont.isLeaderboardGamemode)
			{
				UberCont.opt_gamemode = [0];	
			}
			scrSave();
			steam_shutdown();
			game_end()
		}
		else
		{
			confirmState = 2;
			exit;
		}
	}
}
else
{
	//NOT PAUSED
	if (!instance_exists(StartDaily) && !instance_exists(Vlambeer) && !instance_exists(GenCont) &&
	(KeyCont.key_paus[0] = 1 || (!window_has_focus() && public == 1)
	|| (confirmState == 3 && (mouse_check_button_pressed(mb_left) || 
	KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1)))
	))
	{
		var endMe = false;
		if KeyCont.key_paus[0] == 1 and instance_exists(Menu)
		{
			if isLeaderboardGamemode
			{
				opt_gamemode = [0];
			}
			scrSave();
			if !instance_exists(OptionSelect)
			{
				endMe = true;
			}/*
			else if OptionSelect.selected = 0 and CreditsSelect.selected = 0 and StatsSelect.selected = 0 and OptionSelect2.selected = 0// and UpdateSelect.selected = 0
			{
				steam_shutdown();
				game_end()
			}
			else */if !instance_exists(PlayerSpawn) && !instance_exists(Player) && !instance_exists(StartDaily)
			{
				if instance_exists(Menu)
				{
					debug("MENU ", Menu.mode);
					if Menu.mode == 0
					{
						endMe = true;
					}
					else
						scrReturnMenu()
				}
				else
					scrRestart()
			}
		
		}
		else if instance_exists(Vlambeer)
		{
			endMe = true;
		}
		if (endMe || (confirmState == 3 && (mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1))))
		{
			if instance_exists(Menu)
			debug("END, ", Menu.mode);
			if !instance_exists(Menu) || hasNoMenuOpen()
			{
				if confirmState == 3 && (mouse_check_button_pressed(mb_left) || KeyCont.key_fire[0] == 1 || gamepad_button_check(0,gp_face1))
				{
					steam_shutdown();
					game_end()
					confirmState = 0;
				}
				else
				{
					confirmState = 3;	
				}
			}
			else if Menu.mode == 0
			{
				confirmState = 3;	
			}
		}
		else if instance_exists(Player) && !instance_exists(StartDaily)///PAUSE IN-GAME
		{
			kills=Player.kills
			hard=Player.hard;
			event_user(0);
			alarm[7] = 1;
			isPaused = 1
			with Cursor {
				visible = inGameVisibleState;
			}
		}
	}
}

///Timer

if isPaused == 0 && !instance_exists(GenCont) && !instance_exists(Menu) && !instance_exists(Vlambeer) &&
(instance_exists(Player) || instance_exists(PlayerSpawn)) && !instance_exists(PauseTimer) && !instance_exists(StartDaily)
{
	if normalGameSpeed == 60
	{
		time_frame += 0.5;
		time_microseconds += 1.6666666666666666666666666666667;//Counts to 100
	}
	else
	{
		time_frame ++;
		time_microseconds+=3.3333333333333333333333333333333;//Counts to 100
	}

	if time_microseconds>=100
	{
		time_seconds+=1;
		time_microseconds=0;
	}

	if time_seconds>=60
	{
		time_minutes+=1;
		time_seconds=0;
	}

	if time_minutes>=60
	{
		time_hours+=1;
		time_minutes=0;
	}
}

with option
	y+=other.optY;
	

