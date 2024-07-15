if !visible
	exit;
if mode = 0
{
//TITLE SCREEN
	if KeyCont.key_fire[p] = 1 && !instance_exists(Vlambeer)
	{

	mode = 1
	instance_create(x,y,LoadoutSelect);
	instance_create(x,y,CreditsSelect)
	instance_create(x,y,StatsSelect)
	instance_create(x,y,QuitSelect);
	instance_create(x,y,OptionSelect)
	instance_create(x,y,OptionSelect2)
	instance_create(x,y,DailyScore);
	instance_create(x,y,DailyRace);
	instance_create(x,y,Weekly);
	instance_create(x,y,ViewLeaderboard);
		if firstEntry
		{
			with UpdateChecker
			{
				event_user(0);	
			}
		}
		firstEntry = false;
	with MusCont
	{
		if alarm[0] > 0
			alarm[0] = 1
	}

	num = 0
	dix = 0
	diy = 0
	var totals = racemax + 1;
	var halfWay = 14;
	var justUnlockedSecondRow = false;
	if !UberCont.unlocked_more_characters
	{
		totals = halfWay;
		with UberCont
		{
			var r = 0;
			repeat(racemax + 1)
			{
				if (race_have[r] && r >= totals && r != 15)
				{
					justUnlockedSecondRow = true;
				}
				r += 1;
			}
		}
		if (justUnlockedSecondRow)
		{
			totals = racemax + 1;
			with UberCont
			{
				unlocked_more_characters = true;
				scrSave();
			}
		}
	}
	repeat(totals)
	{
		with instance_create(0,0,CharSelect)
		{
			num = other.num
			if num == 13//Swap atom and sheep
				num = 15;
			else if num == 15
				num = 13;
		}
		if (num == racemax) {
			num = -1;
		}
		num += 1;
	}
	with UberCont
	{
		if (array_length(justUnlocked) > 0)
		{
			with instance_create(x,y,UnlockingCharacter)
			{
				justUnlocked = UberCont.justUnlocked;
			}
		}
		with CharSelect
		{
			if array_contains(UberCont.justUnlocked,num)
			{
				unlocking = true;	
				depth -= 100;
			}
		}
		justUnlocked = [];
	}
	if justUnlockedSecondRow
	{
		with CharSelect {
			if (num >= halfWay && num != 15) || num == 13 
			{
				// visible = false;
				yOffset = -15;
			}
			else
				yOffset = simpleOffset;
		}
		instance_create(x,y,UnlockingSecondRow);
	}
	//instance_create(x,y,UpdateSelect)
	instance_create(x,y,Cheatcode);
	//If savefile found
	if (UberCont.total_run_slots > 0)
	{
		with instance_create(x,y,LoadSelect)
			depth = other.depth - 5;
	}
	exit;
	}
}

if mode = 1
{
	if (KeyCont.key_spec[p] = 1)// && (!instance_exists(LoadoutSelect) || !LoadoutSelect.wepmenuopen))
	{
		scrReturnMenu();
	}
}

