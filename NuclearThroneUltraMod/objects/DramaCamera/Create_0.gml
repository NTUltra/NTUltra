if instance_exists(Player) && !instance_exists(SurvivalWave)
{
    ///
    with MusCont
    {
    audio_stop_all()
    //optimise 
    
    //sound_discard(song)
    //sound_discard(amb)
    var area = Player.area;
	var subarea = Player.subarea;
    if area = 1 || area = 105
    song = musBoss1;
    if area = 3 || area = 106
	{
		if subarea == 1
		{
			song = musAssassinBoss;	
		}
		else
		{
			song = musBoss2;
		}
	}
    else if area = 5 || area = 107
    song = musBoss3;
    else if area = 6 || area = 112
		song = musBoss7;
    else if area = 7 || area = 108
		song = musPurpleDragonBoss;
    else if area = 8 || area = 109
	{
		if (random(100) <1)
			song = sndChubbyEmuSong;
		else
			song = musBoss6B;
	}
	if area = 2 || area == 110 || (area == 10 && subarea < 3)
		song = musBoss5;
	else if area == 4
		song = musBoss6;
	else if area == 115
		song = musBoss6B;
	else if area == 111
		song = choose(musBoss6,musBoss6B);
    else if area = 101
		song = musBoss1;
	else if area == 10
		song = musBoss10
	else if area == 114
		song = musBushBoxBoss;
    snd_loop(song)
    snd_loop(amb)
    //audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
	audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
    
    audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
    
    audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);
    
    //audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
    }

}


if UberCont.opt_bossintro=0 || (instance_exists(SurvivalWave) && !instance_exists(BallBoss)) || UberCont.hadBossIntro {
instance_destroy();
exit;}
UberCont.hadBossIntro = true;
urgent = 2
alarm[0] = 2;

widescreen = 0


name="BOSS"
if instance_exists(BallBoss)
{
	name = "PROTO MIND";
	if random(100)<1
	{
		name = choose("BIG BALL","THE BALL BOSS","PROTO BALL","CIRCLE");	
	}
}
else if instance_exists(Player)
{
if (Player.area = 1 || ((Player.area == 10 || Player.area == 101) && instance_exists(BanditBoss)))
{
//with instance_create(x,y,Drama)
	name = "BIG BANDIT";
	if random(1000)< 1
	{
		name = choose("BIG BITCH","HERE WE GO AGAIN");	
	}
}
else if Player.area = 105
{
//with instance_create(x,y,Drama)
name = "INVERTED BIG BANDIT"
}
else if Player.area = 2
{
	name = "MOM";
	if random(40)<1
	{
		name = choose("BALL MOM","MUMMY","FROG QUEEN","BALL MAMA",
		"PLEASE I'M A MOTHER#OF FIVE CHILDREN#DON'T KILL ME",
		"MISS. FROG#HAPPILY MARRIED","MOMMY BALL","YOUR MOM! HAHA");	
	}
}
else if Player.area == 110
{
	name = "INVERTED MOM";
	if random(40)<1
	{
		name = choose("INVERTED BALL MOM","DAD?","FROG KING","BALL PAPA",
		"PLEASE I'M A FATHER#OF FIVE CHILDREN#DON'T KILL ME",
		"MR. FROG#HAPPILY DIVORCED","DADDY BALL");	
	}
}
else if Player.area = 3
{
//with instance_create(x,y,Drama)
	if Player.subarea = 3
	{
	if random(100)<1
	name = "BIG D."
	else
	name = "BIG DOG"
	}
	else
	{

	if random(100)<1
	name = choose("BIG ASS ASSASSIN","BIG ASS");
	else
	name = "BIG ASSASSIN"

	}
}
else if Player.area = 106
{
//with instance_create(x,y,Drama)
	if Player.subarea = 3
	{
	name = "INVERTED BIG DOG"
	if random(90)<1
		name = choose("I.B.B","INVERTED SCRAP BOSS","IMAGINE MUTATING INTO THIS THING");
	}
	else
	{
	name = "INVERTED BIG ASSASSIN"
	if random(90)<1
		name = choose("THERE SHE IS!","BEST FRIEND","JUST WANT A HUG");
	}
}
else if Player.area == 4
{
//with instance_create(x,y,Drama)
	if Player.subarea == 1
	{
		name = "HYPER CRYSTAL";
		if random(90)<1
			name = choose("CRYSTAL'S MOM","HYPER RIFLE?","HYPER DIAMOND","LUIGI","NOT BIG DOG AGAIN");
	}
	else
	{
		name = "BIG BAD BAT";
		if random(90)<1
			name = choose("THE BIG BAD BAT","SQUARES!","BATMAN","BIG BAT");	
	}
}
else if Player.area = 111
{
	if Player.subarea == 1
	{
		name = "INVERTED HYPER CRYSTAL";
		if random(90)<1
			name = choose("BLUE CRYSTAL","LIGHTNING FRIGHTNING");
	}
	else
	{
		name = "INVERTED BIG BAD BAT";
		if random(90)<1
			name = choose("PURPLE BAT","THE BAT OF DEATH");	
	}
}
else if Player.area = 115
{
	name = "CURSED HYPER CRYSTAL";
	if random(90)<1
		name = choose("A MISTAKE","PURPLE MENACE");
}
else if Player.area = 114
{
//with instance_create(x,y,Drama)
name = "BUSH BOX"
if random(70)<1
	name = choose("BIG BUSH BOX BOSS","BUSH CUBE","BIG BAD BUSH BOX","BIG BUSH","BIG AGRASSIN","BUSHY BOX","PLANT","MISSING FLOWERS","IT'S THE BUSH BOX BOSS","S Q U A R E");
}
else if Player.area = 5
{
//with instance_create(x,y,Drama)
if random(10000)<1
name= "GEORGE!"
else
name = "LIL HUNTER"
}
if Player.area = 107
{
//with instance_create(x,y,Drama)
if random(10000)<1
name= "HENKY!"
else
name = "INVERTED LIL HUNTER"
}
else if Player.area = 6 
{
	if Player.subarea == 2
	{
		name = "BIG MACHINE";
		if random(120) < 1
			name = choose("METAL BLOCK","TINY THRONE");
	}
	else
	{
		name = "TECHNOMANCER";
		if random(80) < 1
			name = choose("TECHROMANCER","LITTLE SHIT");
	}
}
else if Player.area = 112
{
	if Player.subarea == 2
	{
		name = "INVERTED MACHINE"
		if random(120) < 1
			name = choose("TINY ROOM OF DOOM","WHITE MACHINE","FUCK THE SYSTEM");
	}
	else
	{
		name = "INVERTED TECHNOMANCER";
		if random(80) < 1
			name = choose("");
	}

}
else if Player.area = 7
{
//with instance_create(x,y,Drama)

    if random(100)<1
    name="THE DIRTY DRAGON";
    else
    name = "PURPLE DRAGON"
}
else if Player.area = 108
{
//with instance_create(x,y,Drama)

    if random(100)<1
    name="THE DIRTIER DRAGON";
    else
    name = "INVERTED DRAGON"
}
else if Player.area = 8
{
//with instance_create(x,y,Drama)
if Player.subarea=2
    {
    name = "LIL HUNTER"
    }
    else
    {
    
    if random(100)<1
    name="AWH KITTY";
    else
    name = "CHESHIRE CAT"

    }
}
else if Player.area = 109
{
name = "INVERTED CHESHIRE CAT"
}
else if Player.area = 101
{
//with instance_create(x,y,Drama)
name = "BIG FISH"
if random(100) < 1
		name = choose("HEY LOOK#IT'S FISH#FROM NUCLEAR THRONE","O'L BITEY");
}
else if Player.area == 9
{
	name = "THE NUCLEAR THRONE";
	if random(200) < 1
		name = "SON OF A BITCH";
}
else if Player.area == 10
{
	if Player.subarea == 3
	{
		name = "BIG VULTURE";
		if random(100) < 1
			name = choose("CHARGE BIRD","BIG BIRD","ANGRY BIRD");
	}
	else
	{
		name = "MOM ON VACATION";
		if random(100) < 1
			name = choose("WE NOT SKIPPING THIS FIGHT","BALL MOM ON VACATION","MOMMY IN THE SUN");
	}
}

}
with instance_create(x,y,Drama)
name=other.name;

__view_set( e__VW.XView, 0, x-(__view_get( e__VW.WView, 0 )*0.5) );
__view_set( e__VW.YView, 0, y-(__view_get( e__VW.HView, 0 )*0.5) );






