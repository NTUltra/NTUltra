room_speed=30*UberCont.opt_loading;
debug("new gencont");
holdExplainUltraModTimer = 0;
holdExplainWepModTimer = 0;
if UberCont.opt_loading == 4
	room_speed = 999999;

SetSeed();

instance_create(10000,10000,FloorMaker)
instance_create(0,0,TopCont)
wave = 0
skillscroll = 0;

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

//SWITCH CASE!
if Player.area = 0 || Player.area=113//menu Banditland
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
else if Player.area = 104//YV's Crib
__background_set_colour( make_color_rgb(238,240,242) )
else if Player.area = 105//Inverted Desert
__background_set_colour( make_color_rgb(80,112,149) )
else if Player.area = 8//Candyland
__background_set_colour( make_color_rgb(162,111,220) )
else if Player.area = 9//Palace
__background_set_colour( make_color_rgb(97,29,36) )
else if Player.area = 10//savanna
__background_set_colour( make_color_rgb(160,95,61) )
else if Player.area = 106//Inverted scrapyard
__background_set_colour( make_color_rgb(194,176,163) )
else if Player.area = 107//Inverted Frozen City
__background_set_colour( make_color_rgb(75,66,58) )
else if Player.area = 101//Oasis
__background_set_colour( make_color_rgb(81,209,200) )
else if Player.area = 108//Inverted Vulcano
__background_set_colour( make_color_rgb(220,240,240) )
else if Player.area = 109//Inverted wonderland
__background_set_colour( make_color_rgb(65,111,35) )
else if Player.area = 111//inverted caves
__background_set_colour( make_color_rgb(138,186,79) )
else if Player.area = 112//inverted labs
__background_set_colour( make_color_rgb(246,228,224) )
else if Player.area = 114//Jungle bungle wungle fungle fuck ass
__background_set_colour( make_color_rgb(42,144,12) )
else if Player.area = 115//cheese cave
__background_set_colour( make_color_rgb(255,156,35) )
else if Player.area = 116//SURVIVAL ARENA
__background_set_colour( make_color_rgb(43,35,23) )
else if Player.area = 117//MUSHROOM
__background_set_colour( make_color_rgb(75,79,31) )
else if Player.area = 118//Inverted Palace
__background_set_colour( make_color_rgb(142,204,204) )
}
else
__background_set_colour( make_color_rgb(106,122,175) )




scrTips()


goal = 110//110
if instance_exists(Player){
if Player.area = 3 and Player.subarea = 3
goal = 50
else if Player.area = 100
goal = 40
if Player.area = 103
goal = 130
if Player.area = 102
goal = 130
if Player.area = 102
goal = 50
if Player.area = 4
goal = 120
if Player.area = 5
goal = 125
if Player.area = 7
goal = 130
if Player.area = 108 && Player.subarea<2//inverted vulcano
goal = 160
else if Player.area = 108 && Player.subarea=2
goal=130
if Player.area = 104
goal=150;   
if Player.area = 105//inverted desert
goal=130;
if Player.area = 106//inverted scrapyard
goal=120;
if Player.area = 8
goal = 130
if Player.area = 9//Palace
goal = 130
if Player.area = 118//Inverted Palace
goal = 130
if Player.area = 10//savanna
goal = 120
if Player.area = 109//inverted Wonderland
goal=150;
if Player.area = 3
goal = 90
if Player.area = 107//inverted FrozenCity
goal=120;
if Player.area - 101//Oasis
goal=70;
if (Player.area = 6 || Player.area = 112) && Player.subarea=2//LABS BOSS
goal=1;
if Player.area - 113//Banditland
goal=70;
if Player.area - 114//jungle
goal=130;
if Player.area - 117//Mushroom land
goal=120;


if UberCont.opt_gamemode==6 && !((Player.area = 6 || Player.area = 112) && Player.subarea=2)//small levels
goal=30;

if UberCont.opt_gamemode==20 && !((Player.area = 6 || Player.area = 112) && Player.subarea=2)//big levels
goal=300;

}
if UberCont.opt_gamemode == 25//Survival Arena
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