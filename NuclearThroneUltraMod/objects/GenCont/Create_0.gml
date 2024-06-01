room_speed=UberCont.normalGameSpeed*UberCont.opt_loading;
loadTime = 60;
depth = -100;
if UberCont.opt_loading == 4
{
	loadTime = 4;
	room_speed = 999999;
}
crown = [1];
alarm[3] = loadTime - 2;//Loading time;
alarm[0] = loadTime - 1;
alarm[2] = loadTime - 2;
with WepPickup
{
	speed = 0;
	alarm[5] = other.loadTime;
}
with BackCont
{
	alarm[4] += other.loadTime + 5;	
}
SetSeed();
instance_create(0,0,TopCont)
wave = 0
skillscroll = 0;
if audio_is_playing(sndFishRollUpgLoop)
{
	audio_stop_sound(sndFishRollUpgLoop);
}
if audio_is_playing(sndSheepLoop)
{
	audio_stop_sound(sndSheepLoop);
}
if audio_is_playing(sndSheepLoopUpg)
{
	audio_stop_sound(sndSheepLoopUpg);
}
if audio_is_playing(sndFrogLoop)
{
	audio_stop_sound(sndFrogLoop);
}
if audio_is_playing(sndFrogLoopButt)
{
	audio_stop_sound(sndFrogLoopButt);
}
if audio_is_playing(sndChickenLoop)
{
	audio_stop_sound(sndChickenLoop);
}
if instance_exists(Player)
{
	if !UberCont.useSeed && Player.area == 100
	{
		UberCont.savedSeed = random_get_seed();
	}
	with Player {
		x = 10016
		y = 10016
	}
	if scrIsCrown(25)//Crown of freedom copy colour of floorexplo
	{
		switch (Player.area)
		{
			case 0:
			case 113:
			case 119:
				__background_set_colour( make_color_rgb(106,122,175) )
			break;
			case 1:
				__background_set_colour( make_color_rgb(234,164,77) )
			break;
			case 2:
				__background_set_colour( make_color_rgb(64,47,43) )
			break;
			case 3:
				__background_set_colour( make_color_rgb(56,31,31) )
			break;
			case 4:
				__background_set_colour( make_color_rgb(46,37,55) )
			break;
			case 5:
				__background_set_colour( make_color_rgb(115,123,125) )
			break;
			case 6:
				__background_set_colour( make_color_rgb(9,7,13) )
			break;
			case 7:
				__background_set_colour( make_color_rgb(62,16,0) )
			break;
			case 8:
				__background_set_colour( make_color_rgb(183,144,180) )
			break;
			case 9:
				__background_set_colour( make_color_rgb(15,11,19) )
			break;
			case 10:
				__background_set_colour( make_color_rgb(140,123,84) )
			break;
			case 100:
				__background_set_colour( make_color_rgb(27,21,16) )
			break;
			case 101:
				__background_set_colour( make_color_rgb(0,36,25) )
			break;
			case 102:
				__background_set_colour( make_color_rgb(24,10,41) )
			break;
			case 103:
			case 104:
				__background_set_colour( make_color_rgb(60,22,24) )
			break;
			case 105:
				__background_set_colour( make_color_rgb(19,82,159) )
			break;
			case 106:
				__background_set_colour( make_color_rgb(74,112,117) )
			break;
			case 107:
				__background_set_colour( make_color_rgb(157,150,149) )
			break;
			case 108:
				__background_set_colour( make_color_rgb(0,255,255) )
			break;
			case 109:
				__background_set_colour( make_color_rgb(37,83,35) )
			break;
			case 110:
				__background_set_colour( make_color_rgb(214,231,234) )
			break;
			case 111:
				__background_set_colour( make_color_rgb(74,102,40) )
			break;
			case 112:
				__background_set_colour( make_color_rgb(24,51,26) )
			break;
			case 114:
				__background_set_colour( make_color_rgb(35,22,13) )
			break;
			case 115:
				__background_set_colour( make_color_rgb(46,37,55) )
			break;
			case 116:
				__background_set_colour( make_color_rgb(30,25,21) )
			break;
			case 117:
				__background_set_colour( make_color_rgb(38,34,22) )
			break;
			case 118:
				__background_set_colour( make_color_rgb(37,50,51) )
			break;
			case 120:
				__background_set_colour( make_color_rgb(35,33,32) )
			break;
			case 121:
				__background_set_colour( make_color_rgb(81,96,135) )
			break;
			case 122:
				__background_set_colour( make_color_rgb(153,56,119) )
			break;
			case 123:
				__background_set_colour( make_color_rgb(9,25,24) )
			break;
			case 124:
				__background_set_colour( make_color_rgb(37,41,51) )
			break;
			case 125:
				__background_set_colour( make_color_rgb(20,44,51) )
			break;
			case 126:
				__background_set_colour( make_color_rgb(0,0,0) )
			break;
			case 127:
				__background_set_colour( make_color_rgb(246, 198,255) )
			break;
			case 128:
				__background_set_colour( make_color_rgb(15, 25, 13) )
			break;
			case 129:
				__background_set_colour( make_color_rgb(33, 4, 4) )
			break;
			case 130:
				__background_set_colour( make_color_rgb(12,12,12) )
			break;
			case 131:
				__background_set_colour( make_color_rgb(9,10,9) )
			break;
			case 132:
				__background_set_colour( make_color_rgb(20,5,25) )
			break;
			case 133:
				__background_set_colour( make_color_rgb(60,22,24) )
			break;
			case 134:
				__background_set_colour( make_color_rgb(17,51,5) )
			break;
			case 135:
				__background_set_colour( make_color_rgb(26,20,18) )
			break;
			case 136:
				__background_set_colour( make_color_rgb(26,76,8) )
			break;
			case 137:
			__background_set_colour( make_color_rgb(105, 239, 139) )
			break;
		}
	}
	else
	{
		//SWITCH CASE!
		if Player.area = 0 || Player.area == 113 || Player.area == 119//menu Banditland
		__background_set_colour( make_color_rgb(106,122,175) )
		else if Player.area = 1//desert
		__background_set_colour( make_color_rgb(175,143,106) )
		else if Player.area = 2//sewers
		__background_set_colour( make_color_rgb(76,89,70) )
		else if Player.area = 110//inverted sewers
		__background_set_colour( make_color_rgb(197,186,201) )
		else if Player.area = 3//scrapyard
		__background_set_colour( make_color_rgb(138,150,158) )
		else if Player.area = 4//cave
		__background_set_colour( make_color_rgb(129,82,188) )
		else if Player.area = 5//frozen city
		__background_set_colour( make_color_rgb(180,189,197) )
		else if Player.area = 6//labs
		__background_set_colour( make_color_rgb(9,28,32) )
		else if Player.area = 100//crownvault
		__background_set_colour( make_color_rgb(67,53,35) )//make_color_rgb(67,53,35) )
		else if Player.area = 102//pizza sewers
		__background_set_colour( make_color_rgb(160,75,99) )
		else if Player.area = 103//yv mansion
		__background_set_colour( make_color_rgb(238,240,242) )
		else if Player.area = 7//VULCANO
		{
		__background_set_colour( make_color_rgb(55,35,35) )

		//saving memory
		draw_texture_flush();

		draw_sprite(sprFloor7,0,0,0);
		draw_sprite(sprFloor7B,0,0,0);
		draw_sprite(sprFloorLava,0,0,0);
		draw_sprite(sprFloor7Explo,0,0,0);
		draw_sprite(sprWall7Trans,0,0,0);
		draw_sprite(sprWall7Top,0,0,0);
		draw_sprite(sprWall7Out,0,0,0);
		draw_sprite(sprWall7Bot,0,0,0);
		draw_sprite(sprDebris7,0,0,0);
		draw_sprite(sprLavaBubble2,0,0,0);
		draw_sprite(sprLavaBubble,0,0,0);

		}
		else if Player.area == 104//YV's Crib
		__background_set_colour( make_color_rgb(238,240,242) )
		else if Player.area == 105//Inverted Desert
		__background_set_colour( make_color_rgb(80,112,149) )
		else if Player.area == 8//Candyland
		__background_set_colour( make_color_rgb(162,111,220) )
		else if Player.area == 9//Palace
		__background_set_colour( make_color_rgb(97,29,36) )
		else if Player.area == 10//savanna
		__background_set_colour( make_color_rgb(160,95,61) )
		else if Player.area == 106//Inverted scrapyard
		__background_set_colour( make_color_rgb(194,176,163) )
		else if Player.area == 107//Inverted Frozen City
		__background_set_colour( make_color_rgb(75,66,58) )
		else if Player.area == 101//Oasis
		__background_set_colour( make_color_rgb(81,209,200) )
		else if Player.area == 108//Inverted Vulcano
		__background_set_colour( make_color_rgb(220,240,240) )
		else if Player.area == 109//Inverted wonderland
		__background_set_colour( make_color_rgb(65,111,35) )
		else if Player.area == 111//inverted caves
		__background_set_colour( make_color_rgb(138,186,79) )
		else if Player.area == 112//inverted labs
		__background_set_colour( make_color_rgb(246,228,224) )
		else if Player.area == 114//Jungle bungle wungle fungle fuck ass
		__background_set_colour( make_color_rgb(42,144,12) )
		else if Player.area == 115//cheese cave
		__background_set_colour( make_color_rgb(255,156,35) )
		else if Player.area == 116//SURVIVAL ARENA
		__background_set_colour( make_color_rgb(43,35,23) )
		else if Player.area == 117//MUSHROOM
		__background_set_colour( make_color_rgb(75,79,31) )
		else if Player.area == 118//Inverted Palace
		__background_set_colour( make_color_rgb(142,204,204) )
		else if Player.area == 120//Inverted throne 2
		__background_set_colour( make_color_rgb(76,68,61) )
		else if Player.area == 121//Inverted Savanna
		__background_set_colour( make_color_rgb(71,153,82) )
		else if Player.area == 122//Inverted Oasis
		__background_set_colour( make_color_rgb(229,130,153) )
		else if Player.area == 123//Inverted Jungle
		__background_set_colour( make_color_rgb(120,11,142) )
		else if Player.area == 124//Inverted Mushroom
		__background_set_colour( make_color_rgb(63,38,76) )
		else if Player.area == 125//Inverted Mansion
		__background_set_colour( make_color_rgb(178,149,124) )
		else if Player.area == 126//Graveyard
		__background_set_colour( make_color_rgb(0,0,0) )
		else if Player.area == 127//Graveyard
		__background_set_colour( make_color_rgb(246, 198,255) )
		else if Player.area == 128//Crown Courtyard
			__background_set_colour( make_color_rgb(44, 43, 19) )
		else if Player.area == 129//Inverted Crown Courtyard
			__background_set_colour( make_color_rgb(58, 34, 46) )
		else if Player.area == 130//Factory
			__background_set_colour( make_color_rgb(26,70,59) )
		else if Player.area == 131//Inverted Factory
			__background_set_colour( make_color_rgb(73, 26, 39) )
		else if Player.area == 132//Cursed Factory
			__background_set_colour( make_color_rgb(49, 12, 63) )
		else if Player.area == 133//Golden Factory
			__background_set_colour( make_color_rgb(198, 138, 42) )
		else if Player.area == 134//Ultra Factory
			__background_set_colour( make_color_rgb(84, 66, 44) )
		else if Player.area == 135//HQ
			__background_set_colour( make_color_rgb(245, 250, 251) )
		else if Player.area == 136//Ultra scrapyard
			__background_set_colour( make_color_rgb(175, 143, 106) )
		else if Player.area == 137//Void
			__background_set_colour( make_color_rgb(0, 0, 0) )
		else if Player.area == 138//Cloudland
			__background_set_colour( make_color_rgb(105, 239, 139) )
	}
}
else
	__background_set_colour( make_color_rgb(229,56,153) )



scrTips()


goal = 100//110
if instance_exists(Player){
var s = clamp(Player.loops*5,0,30);
goal += s;
if Player.area = 3 and Player.subarea = 3
goal = 70+s
else if Player.area = 100
goal = 40
else if Player.area = 103 || Player.area == 125
goal = 130+s
//if Player.area = 102
//goal = 130+s
else if Player.area = 102
goal = 50+s
else if Player.area = 4
goal = 120
else if Player.area = 5
goal = 150+s
else if Player.area = 7
{
goal = 130+s
	if Player.subarea == 3
		goal = 10;
}
else if Player.area = 108 && Player.subarea<3//inverted vulcano
	goal = 140+s
else if Player.area = 108 && Player.subarea==3
{
	goal = 10;
}
else if Player.area = 104
goal=150+s
else if Player.area == 105//inverted desert
goal=130+s
else if Player.area == 106 || Player.area == 136//inverted scrapyard
goal=120+s
else if Player.area == 8//Wonderland
goal = 130+s
else if Player.area == 9//Palace
goal = 130+s
else if Player.area == 118//Inverted Palace
goal = 130+s
else if Player.area == 10 || Player.area == 121//savanna
goal = 105+s
else if Player.area == 109//inverted Wonderland
goal=130+s
else if Player.area == 3
goal = 100+s
else if Player.area == 107//inverted FrozenCity
goal=120+s;
else if Player.area == 101 || Player.area == 122//Oasis
goal=105+s;
else if (Player.area == 6 || Player.area = 112) && Player.subarea == 2//LABS BOSS
goal=1;
else if (Player.area == 6 || Player.area = 112)//LABS BOSS
goal=110;
else if Player.area == 113//Banditland
goal=70+s;
else if Player.area == 114 || Player.area == 123//jungle
goal=125+s;
else if Player.area == 117 || Player.area == 124//Mushroom land
goal=120+s;
else if Player.area == 119 || Player.area == 120
goal = 60;
else if Player.area == 126 || Player.area == 127//Graveyard
goal = 110+s;
else if Player.area == 128 || Player.area == 129//Courtyard
goal = 150+s;
else if Player.area == 130 || Player.area == 131 || Player.area == 132 || Player.area == 133 || Player.area == 134//Factory
goal = 130+s;
else if Player.area == 135//Hq
{
goal = 120+s;
	if Player.subarea == 3
	{
		goal = 1;	
	}
}
else if Player.area == 137//Void
goal = 1;
else if Player.area == 138//Cloudland
goal = 105 + s;

if scrIsGamemode(6) && !((Player.area = 6 || Player.area = 112) && Player.subarea=2)//small levels
goal=70+s;

if scrIsGamemode(20) && !((Player.area = 6 || Player.area = 112) && Player.subarea=2)//big levels
goal *= 2;

}
if scrIsGamemode(25)//Survival Arena
goal = 1;

if instance_exists(MenuGen)
goal = 80//60


//kutgrap means vagina joke
kutgrap=false;
if random(300)<1
kutgrap=true;

kutgrap2=false;
if random(300)<1
kutgrap2=true;

SetSeed();
hasLimitReached = false;
with instance_create(10000,10000,FloorMaker) {scrGenerateFloorMaker(0);}
SetSeed();

gmScroll = 0;
gmwidth = 1;
alarm[4] = 1;