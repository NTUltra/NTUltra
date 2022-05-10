if !instance_exists(KeyCont)
instance_create(0,0,KeyCont)
if instance_exists(Player)
{
	area=Player.area;
	subarea=Player.subarea;
	loops=Player.loops;
}

if area == 1 || area == 105 || area == 10 || area == 7 || area == 108 || area == 113
	snd_wallbreak = sndWallBreakRock;
else if area == 2 || area == 110 || area == 3 || area == 106 || area == 5 || area == 107
	snd_wallbreak = sndWallBreakScrap;
else if area == 2 || area == 110 || area == 3 || area == 106
	snd_wallbreak = sndWallBreakRock;
else if area == 4 || area == 115 || area == 111
	snd_wallbreak = sndWallBreakCrystal;
else if area == 6 || area == 112
	snd_wallbreak = sndWallBreakLabs;
else if area == 8 || area == 109 || area == 9 || area == 100 || area == 116
	snd_wallbreak = sndWallBreakBrick;
else if area == 114 || area == 117
	snd_wallbreak = sndWallBreakJungle;
else if area == 2

/*
if !instance_exists(Cursor)
instance_create(0,0,Cursor);
*/
firstFloorMaker = true;
seedOffset = 0;

//Cheat mode
if (opt_gamemode == 17)
	public = 0;
else
	public = defaultPublic;
	
hadBossIntro = false;
