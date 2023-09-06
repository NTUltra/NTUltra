if opt_sideart == sprite_get_number(sprSideArt) + 1
	scrEnableBigScreen();
if !instance_exists(KeyCont)
instance_create(0,0,KeyCont)
if instance_exists(Player)
{
	area=Player.area;
	subarea=Player.subarea;
	loops=Player.loops;
}
if area == 1 || area == 105 || area == 10 || area == 7 || area == 108 || area == 113 || area == 110 || area == 3 || area == 106 || area == 126 || area == 127 || area == 120 || area == 121 || area == 10
	snd_wallbreak = sndWallBreakRock;
else if area == 2 || area == 110 || area == 3 || area == 106 || area == 5 || area == 107
	snd_wallbreak = sndWallBreakScrap;
else if area == 4 || area == 115 || area == 111 || area == 136
	snd_wallbreak = sndWallBreakCrystal;
else if area == 6 || area == 112 || area == 130 || area == 131 || area == 132 || area == 133 || area == 134 || area == 135
	snd_wallbreak = sndWallBreakLabs;
else if area == 8 || area == 109 || area == 9 || area == 100 || area == 116 || area == 118 || area == 128 || area == 129 || area == 102 || area == 125
	snd_wallbreak = sndWallBreakBrick;
else if area == 114 || area == 117 || area == 123 || area == 124
	snd_wallbreak = sndWallBreakJungle;
else if area == 101 || area == 122
	snd_wallbreak = sndWater1;
else if area == 0//Menu
	snd_wallbreak = sndSilence;

/*
if !instance_exists(Cursor)
instance_create(0,0,Cursor);
*/
firstFloorMaker = true;
seedOffset = 0;

//Cheat mode
if (scrIsGamemode(17))
	public = 0;
else
	public = defaultPublic;
	
hadBossIntro = false;
