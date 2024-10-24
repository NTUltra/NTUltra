depth = -99;
image_speed = 0;
playedSound = false;
resolutionScale = UberCont.opt_resolution_scale;
sideArt = UberCont.opt_sideart;
customSideArt = UberCont.customSideArt;
surf = -1;
bossIntroSound = sndSilence;
layerSprite = sprBossIntroBackLayer;
deaths = 0
event_user(1);
var xx = 0//camera_get_view_x(view_camera[0]);
var yy = 0//camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
x = xx + (vw*0.5)
y = yy + vh;
if UberCont.normalGameSpeed == 60
{
	introDuration = 100;// 4 seconds
	shiftInDuration = 20;
	alarm[2] = 15;
}
else
{
	introDuration = 50;// 4 seconds
	shiftInDuration = 10;
	alarm[2] = 7;
}
accelerate = 0;
xShift = 1;
yShift = 0;
nx = x;
ny = yy + 16;
lx = x;
lxMoveStart = lx;
x -= 32;
xMoveStart = x;
xIntro = x - 500;
xOutro = x + 500;
x = xIntro;
lx = x;
nx += 32;

if instance_exists(InvaderBossSpawnPortal) || instance_exists(BossInvasionNoName) || scrIsGamemode(40) || scrIsGamemode(44)
{
	event_perform(ev_alarm,2);
	instance_destroy();
	exit;
}
if !instance_exists(SurvivalWave) && !instance_exists(SandWorm) && !instance_exists(WallCrawler)
{
    ///
	if (!instance_exists(PitNavigation) || (instance_exists(Player) && Player.area == 140) || instance_exists(InvertedGraveyardFish))
    with MusCont
    {
	    //audio_stop_all()
		audio_stop_sound(song);
	    //optimise 
    
	    //sound_discard(song)
	    //sound_discard(amb)
		if instance_exists(PitNavigation) && instance_exists(InvertedGraveyardFish)
		{
			song = musUltraInvGraveyardFish;
		}
		else if instance_exists(IDPDCaptain)
		{
			song = musBoss8;
		}
		else if instance_exists(CloudBoss)
		{
			song = musUltraVisionary;
		}
		else if instance_exists(MimicBoss)
		{
			song = musUltraMimicBoss;
			//instance_create(x,y,MusMimicBoss);
		}
		else if instance_exists(BecomeMushroomBossGrow)
		{
			song = musUltraVisionary;
		}
		else if instance_exists(VoidMasterBoss)
		{
			song = musChimera2;
		}
		else if instance_exists(PitGhostBoss)
		{
			song = musUltraPitGhostBoss;	
		}
		else
		{
		    var area = instance_exists(Player) ? Player.area : UberCont.area;
			var subarea = instance_exists(Player) ? Player.subarea : UberCont.subarea;
		    if area = 1 || area = 105
			{
				song = musBoss1;
			}
		    else if area = 3 || area = 106 || area == 136
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
				song = musUltraPurpleDragonBoss;
		    else if area = 8 || area = 109
			{
				if (random(100) <1)
					song = sndChubbyEmuSong;
				else
					song = musBoss6B;
			}
			if area = 2 || (area == 10 && subarea == 2)
			{
				if instance_exists(BanditBoss) && !instance_exists(BallMom)
					song = musBoss1;
				else
					song = musBoss5;
			}
			else if area == 110 && subarea == 2
				song = musBoss5B;
			else if area == 4
				song = musBoss6;
			else if area == 115
				song = musBoss6B;
			else if area == 111
				song = choose(musBoss6,musBoss6B);
		    else if area = 101 || area == 122
				song = musUltraOasisBoss;
			else if area == 10 || area == 121
				song = musBoss10
			else if area == 114 || area == 123
				song = musUltraBushBoxBoss;
			else if area == 119 || area == 120
				song = musBoss4B;
			else if area == 126
				song = musUltraGraveyardFish;
			else if area == 127
				song = musUltraInvGraveyardFish;
			else if area == 128
			{
				song = musUltraCrownGluttonBoss;
				if instance_exists(InvertedCrownGlutton)
					song = musUltraInvCrownGluttonBoss;
			}
			else if area == 129
				song = musUltraInvCrownGluttonBoss;
			else if area == 130 || area == 131 || area == 132 || area == 133 || area == 134
				song = musUltraBossBot;
		}
		/*if instance_exists(MimicBoss)
		{
			if audio_is_playing(song)
				audio_stop_sound(song);
		}
		else
		{*/
		    snd_loop(song)
			audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
		//}
    
	    //audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
    }

}


if UberCont.opt_bossintro=0 || (instance_exists(SurvivalWave) && !instance_exists(BallBoss)) || UberCont.hadBossIntro {
	event_perform(ev_alarm,2);
	instance_destroy();
	exit;
}
snd_play_2d(sndBossIntroIn);
UberCont.hadBossIntro = true;
urgent = 2
alarm[0] = 2;
with BackCont
{
	alarm[4] += 2;	
}
widescreen = 0


name="BOSS";
var canFunny = false;
if instance_exists(Player)
{
	repeat(UberCont.racemax)
	    deaths += UberCont.ctot_dead[Player.race]
}
if deaths > 50
	canFunny = true;
if instance_exists(MimicBoss)
{
	name = "YOU?";
	if instance_exists(Player)
	{
		name = string_replace_all(string_replace_all(Player.race_name[Player.race],"[",""),"]","");
		if Player.bskin < 2
		{
			sprite_index = sprBigPortrait;
			layerSprite = sprBossIntroBackLayerMimic;
			image_index = scrRaceToPortraitIndex(Player.race, Player.bskin);
		}
	}
}
else if instance_exists(InvertedCloudBoss)
{
	UberCont.hadBossIntro = false;
	name = "THE INVERTED VISIONARY";
	//image_index = 18;
}
else if instance_exists(CloudBoss)
{
	UberCont.hadBossIntro = false;
	name = "THE VISIONARY";
	if canFunny && random(200) < 1
		name = choose("POISONOUS POTATO!");
	//image_index = 18;
}
else if instance_exists(BecomeInvertedMushroomBossGrow)
{
	name = "INVERTED MYCELIUM MONSTER";
	if canFunny && random(200) < 1
		name = choose("MUSHROOM SOUP!");
	//image_index = 18;
}
else if instance_exists(BecomeMushroomBossGrow)
{
	name = "MYCELIUM MONSTER";
	if canFunny && random(200) < 1
		name = choose("YOKU'S MONSTER!");
	//image_index = 18;
}
else if instance_exists(PitGhostBoss)
{
	name = "THE PIT GHOST";
	if canFunny && random(500) < 1
		name = choose("GET YOUR SPOOK ON!");
	//image_index = 18;
}
else if instance_exists(InvertedSandWorm)
{
	name = "INVERTED SAND WORM";
}
else if instance_exists(SandWorm)
{
	name = "SAND WORM";
}
else if instance_exists(WallCrawler)
{
	name = "WALL CRAWLER";
	if canFunny && random(150)<1
		name = choose("BUTT PINCHER","SNEAK ATTACK!","IT'S JUST A WALL!");
}
else if instance_exists(InvertedWallCrawler)
{
	name = "INVERTED WALL CRAWLER";
}
else if instance_exists(IDPDCaptain)
{
	image_index = 9;
	name = "CAPTAIN";
	if canFunny && random(150)<1
		name = choose("LET'S FUCKING GO","COME AT ME BRO","WE'RE HERE");
}
else if instance_exists(VoidMasterBoss)
{
	image_index = 0;
	name = "VOID MASTER";
	if canFunny && random(150)<1
		name = choose("DUEL!","THE GOOD, THE BAD AND THE UGLY?");
}
else if instance_exists(UltraBigDog)
{
	if canFunny && random(100)<1
		name = choose("CHILD MAULER","BABY MUNCHER");
	else
		name = "ULTRA BIG DOG";
	image_index = 45;
}
else if instance_exists(BallBoss)
{
	name = "PROTO MIND";
	if canFunny && random(100)<1
	{
		name = choose("BIG BALL","THE BALL BOSS","PROTO BALL","CIRCLE");	
	}
}
else if instance_exists(InvertedBigDisc) && instance_exists(PitNavigation)
{
	name = "INVERTED BIG DISC";
	if canFunny && random(600)<1
		name= choose("BROWN DISC","BIG OOPS");	
}
else if instance_exists(InvertedGraveyardFish) && instance_exists(PitNavigation)
{
	name = "INVERTED GRAVE FISH";
		if canFunny && random(80)<1
			name = choose("INVERTED GRAVE DIGGER");
}
else if instance_exists(InvertedAssassinBoss) && instance_exists(PitNavigation)
{
	name = "INVERTED BIG ASSASSIN"
}
else
{
	var area = instance_exists(Player) ? Player.area : UberCont.area;
	var subarea = instance_exists(Player) ? Player.subarea : UberCont.subarea;
	if (area = 1 || ((area == 10 || area == 101) && instance_exists(BanditBoss)))
	{
	//with instance_create(x,y,Drama)
		name = "BIG BANDIT";
		image_index = 1;
		if canFunny && random(1000)< 1
		{
			name = choose("BIG BITCH","HERE WE GO AGAIN","REBEL'S BROTHER","BIG DAD");	
		}
	}
	else if area = 105
	{
	//with instance_create(x,y,Drama)
		name = "INVERTED BIG BANDIT"
		image_index = 24;
		if canFunny && random(1000)< 1
		{
			name = choose("BIG FUCK","SHITBAG","MISTER ASS","VARIETY STREAMER");
		}
	}
	else if area = 2
	{
		if instance_exists(BanditBoss) && !instance_exists(BallMom)
		{
			name = "STINKY BIG BANDIT";
			image_index = 1;
		}
		else
		{
			name = "MOM";
			image_index = 6;
			if canFunny && random(40)<1
			{
				name = choose("BALL MOM","MUMMY","FROG QUEEN","BALL MAMA",
				"PLEASE I'M A MOTHER\nOF FIVE CHILDREN\nDON'T KILL ME",
				"MISS. FROG\nHAPPILY MARRIED","MOMMY BALL","YOUR MOM! HAHA");	
			}
		}
	}
	else if area == 110
	{
		name = "INVERTED MOM";
		if canFunny && random(40)<1
		{
			name = choose("INVERTED BALL MOM","DAD?","FROG KING","BALL PAPA",
			"PLEASE I'M A FATHER\nOF FIVE CHILDREN\nDON'T KILL ME",
			"MR. FROG\nHAPPILY DIVORCED","DADDY BALL");	
		}
		image_index = 29;
	}
	else if area = 3
	{
	//with instance_create(x,y,Drama)
		if subarea = 3
		{
			image_index = 2;
			if canFunny && random(100)<1
				name = "BIG D."
			else
				name = "BIG DOG"
		}
		else
		{
			if canFunny && random(100)<1
				name = choose("BIG ASS ASSASSIN","BIG ASS");
			else
				name = "BIG ASSASSIN"

		}
	}
	else if area = 136
	{
	//with instance_create(x,y,Drama)
		if canFunny && random(100)<1
			name = choose("CHILD MAULER","BABY MUNCHER");
		else
			name = "ULTRA BIG DOG";
		image_index = 45;
	}
	else if area = 106
	{
	//with instance_create(x,y,Drama)
		if subarea = 3
		{
			name = "INVERTED BIG DOG"
			if canFunny && random(200)<1
				name = choose("I.B.B","INVERTED SCRAP BOSS","IMAGINE MUTATING INTO THIS THING");
			image_index = 25;
		}
		else
		{
			name = "INVERTED BIG ASSASSIN"
			if canFunny && random(120)<1
				name = choose("THERE SHE IS!","BEST FRIEND","JUST WANT A HUG");
		}
	}
	else if area == 4
	{
	//with instance_create(x,y,Drama)
		if subarea == 1
		{
			image_index = 7;
			name = "HYPER CRYSTAL";
			if canFunny && random(90)<1
				name = choose("CRYSTAL'S MOM","HYPER RIFLE?","HYPER DIAMOND","LUIGI","NOT BIG DOG AGAIN");
		}
		else
		{
			name = "BIG BAD BAT";
			if canFunny && random(90)<1
				name = choose("THE BIG BAD BAT","SQUARES!","BATMAN","BIG BAT");	
		}
	}
	else if area = 111
	{
		if subarea == 1
		{
			image_index = 30;
			name = "INVERTED HYPER CRYSTAL";
			if canFunny && random(90)<1
				name = choose("BLUE CRYSTAL","LIGHTNING FRIGHTNING");
		}
		else
		{
			name = "INVERTED BIG BAD BAT";
			if canFunny && random(90)<1
				name = choose("PURPLE BAT","THE BAT OF DEATH");	
		}
	}
	else if area = 115
	{
		name = "CURSED HYPER CRYSTAL";
		image_index = 10;
		if canFunny && random(90)<1
			name = choose("A MISTAKE","PURPLE MENACE");
	}
	else if area = 114
	{
	//with instance_create(x,y,Drama)
	name = "BUSH BOX"
	if canFunny && random(70)<1
		name = choose("BIG BUSH BOX BOSS","BUSH CUBE","BIG BAD BUSH BOX","BIG BUSH","BIG AGRASSIN","BUSHY BOX","PLANT","MISSING FLOWERS","IT'S THE BUSH BOX BOSS","S Q U A R E");
	}
	else if area = 123
	{
		//with instance_create(x,y,Drama)
		name = "INVERTED BUSH BOX"
		if canFunny && random(200)<1
			name = choose("GAY BUSH","PINK BUSH","BUSH BALL");
	}
	else if area = 5
	{
		if subarea > 2
		{
			image_index = 3;
			//with instance_create(x,y,Drama)
			if canFunny && random(1000)<1
				name= choose("FUNNY FUCK","GEORGE!","NOOB STOMPER!")
			else
				name = "LIL HUNTER"
		}
		else// if subarea == 2
		{
			name = "BIG DISC";
			if canFunny && random(600)<1
				name= choose("BIG DIC","LARGE STAR","DUMB BOSS");
		}
	}
	else if area = 107
	{
	//with instance_create(x,y,Drama)
		if subarea > 2
		{
			if canFunny && random(10000)<1
				name = "HENKY!"
			else
				name = "INVERTED LIL HUNTER";
			image_index = 26;
		}
		else// if subarea == 2
		{
			name = "INVERTED BIG DISC";
			if canFunny && random(600)<1
				name= choose("BROWN DISC","BIG OOPS");
		}
	}
	else if area = 6 
	{
		if subarea == 2
		{
			name = "BIG MACHINE";
			if canFunny && random(120) < 1
				name = choose("METAL BLOCK","TINY THRONE");
		}
		else
		{
			image_index = 8;
			name = "TECHNOMANCER";
			if canFunny && random(80) < 1
				name = choose("TECH-ROMANCER","LITTLE SHIT");
		}
	}
	else if area = 112
	{
		if subarea == 2
		{
			name = "INVERTED MACHINE"
			if canFunny && random(120) < 1
				name = choose("TINY ROOM OF DOOM","WHITE MACHINE","FUCK THE SYSTEM");
		}
		else
		{
			image_index = 31;
			name = "INVERTED TECHNOMANCER";
			if canFunny && random(80) < 1
				name = choose("NERD");
		}

	}
	else if area = 7
	{
	//with instance_create(x,y,Drama)
		image_index = 11;
		xShift = 0;
		yShift = -1;
		y += 32;
		x += 32;
	    if canFunny && random(200)<1
			name="THE DIRTY DRAGON";
	    else
			name = "PURPLE DRAGON"
	
	}
	else if area = 108
	{
	//with instance_create(x,y,Drama)
		image_index = 33;
		xShift = 0;
		yShift = -1;
		y += 32
		x += 32;
	    if canFunny && random(200)<1
			name="THE DIRTIER DRAGON";
	    else
			name = "INVERTED DRAGON"
	
	}
	else if area = 8
	{
	//with instance_create(x,y,Drama)
		if subarea=2
	    {
			image_index = 11;
			name = "LIL HUNTER"
	    }
	    else
	    {
    
		    if canFunny && random(100)<1
				name="AWH KITTY";
		    else
				name = "CHESHIRE CAT"

	    }
	}
	else if area = 109
	{
		name = "INVERTED CHESHIRE CAT"
	}
	else if area = 101
	{
	//with instance_create(x,y,Drama)
		name = "BIG FISH"
		if canFunny && random(200) < 1
			name = choose("HEY LOOK\nIT'S FISH\nFROM NUCLEAR THRONE","O'L BITEY");
	}
	else if area = 122
	{
	//with instance_create(x,y,Drama)
		name = "INVERTED BIG FISH"
		if canFunny && random(200) < 1
			name = choose("GAS FISH","THAT'S MISTER\nFISH FOR YOU!");
	}
	else if area == 9
	{
		image_index = 4
		name = "THE NUCLEAR THRONE";
		if canFunny && random(200) < 1
			name = "SON OF A BITCH";
	}
	else if area == 118
	{
		image_index = 27;
		name = "THE INVERTED NUCLEAR THRONE";
	}
	else if area == 10
	{
		 if subarea == 2
		{
			image_index = 6;
			name = "MOM ON VACATION";
			if canFunny && random(100) < 1
				name = choose("WE NOT SKIPPING THIS FIGHT","BALL MOM ON VACATION","MOMMY IN THE SUN","BIKINI");
		}
		else
		{
			name = "BIG VULTURE";
			if canFunny && random(100) < 1
				name = choose("CHARGE BIRD","BIG BIRD","ANGRY BIRD");
		}
	
	}
	else if area == 121
	{
		if subarea == 3
		{
			name = "INVERTED BIG VULTURE";
			if canFunny && random(200) < 1
				name = choose("BIG CROW","LARGE RAVEN","PEACOCK");
		}
		else
		{
			image_index = 6;
			name = "MOM ON VACATION";
			if canFunny && random(100) < 1
				name = choose("WE NOT SKIPPING THIS FIGHT","BALL MOM ON VACATION","MOMMY IN THE SUN","BIKINI");
		}
	}
	else if area == 119
	{
		image_index = 5;
		name = "THRONE II";
		if canFunny && random(400) < 1
			name = choose("IT'S TIME","FIGHT ME","CTHULHU","BULLET HELL");
	}
	else if area == 120
	{
		image_index = 28;
		name = "INVERTED THRONE II";
		if canFunny && random(400) < 1
			name = choose("THRONE III","END OF THE ROAD","TICKET TO 1 LESS VAN");
	}
	else if area = 126
	{
		name = "CURSED GRAVE FISH";
		if canFunny && random(100)<1
			name = choose("CURSED GRAVE DIGGER");
	}
	else if area = 127
	{
		name = "INVERTED GRAVE FISH";
		if canFunny && random(80)<1
			name = choose("INVERTED GRAVE DIGGER");
	}
	else if area = 128
	{
		name = "CROWN GLUTTON";
		if canFunny && random(100)<1
			name = choose("CROWN CROWN CROWN","MULTI CROWN","HOARDER!");
	}
	else if area = 129
	{
		name = "INVERTED CROWN GLUTTON";
		if canFunny && random(80)<1
			name = choose("AGAIN!","CROWN AGAIN");
	}
	else if area = 130
	{
		name = "BOSS BOT";
		if canFunny && random(200) < 1
			name = choose("I'M THE BOSS HERE!");
		
	}
	else if area = 131
	{
		name = "INVERTED BOSS BOT";
	}
	else if area = 132
	{
		name = "CURSED BOSS BOT";
	}
	else if area = 133
	{
		name = "GOLDEN BOSS BOT";
		if canFunny && random(80) < 1
			name = choose("SUPREME ROYAL ROBOTTO");
	}
	else if area = 134
	{
		name = "ULTRA BOSS BOT";
		if canFunny && random(80) < 1
			name = choose("ROLL CREDITS BOSS BOT");
	}
}
event_user(0);