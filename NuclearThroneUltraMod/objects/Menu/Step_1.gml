if !visible
	exit;
if mode = 0
{
//TITLE SCREEN
if KeyCont.key_fire[p] = 1 && !instance_exists(Vlambeer)
{

mode = 1
debug("scores: ", instance_number(DailyScore));
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

num = 14
dix = 0
diy = 0
repeat(racemax+1)
{
	with instance_create(0,0,CharSelect)
	{
		num = other.num
	}
	if (num == racemax) {
		num = -1;
	}
	num += 1;
}

//instance_create(x,y,UpdateSelect)
instance_create(x,y,Cheatcode);
//If savefile found
var fileString ="ntultrarun1.sav";
if (file_exists(fileString))
{
	with instance_create(x,y,LoadSelect)
		depth = other.depth - 5;
}
exit;
}
}

if mode = 1
{
if KeyCont.key_spec[p] = 1
{
	scrReturnMenu();
}

}

