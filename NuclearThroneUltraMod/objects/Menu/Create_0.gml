//if !instance_exists(Cursor)
//instance_create(0,0,Cursor);
with UberCont
{
	finalizedWeapons = [];	
}
depth = -11;
creditpage = 0;
mode = 0
explainSprite = sprExplain1;
mouseover = -1;
image_speed = 0
gmScroll = 0;
gmwidth = 1;
gmSurf = -1;
alarm[1] = 1;
widescreen = -5
scrRaces()
scrCrowns()
scrGameModes();
race = 0
skin = 0;
wave = 0;
explainLerp = 0;
crown = [1];

char[0] = instance_create(64,64,Campfire)
char[0].num = 0
if UberCont.race_have[1] = 1
{
char[1] = instance_create(64,32,CampChar)
char[1].sprite_index = sprFishMenu
char[1].spr_menu = sprFishMenuSelected
char[1].spr_to = sprFishMenuSelect
char[1].spr_from = sprFishMenuDeselect
char[1].spr_slct = sprFishMenu

char[1].num = 1
instance_create(64,34,LogMenu)
}
if UberCont.race_have[2] = 1
{
char[2] = instance_create(64,96,CampChar)
char[2].sprite_index = sprCrystalMenu
char[2].spr_menu = sprCrystalMenuSelected
char[2].spr_to = sprCrystalMenuSelect
char[2].spr_from = sprCrystalMenuDeselect
char[2].spr_slct = sprCrystalMenu
char[2].num = 2
}
if UberCont.race_have[3] = 1
{
char[3] = instance_create(104,64,CampChar)
char[3].sprite_index = sprEyesMenu
char[3].spr_menu = sprEyesMenuSelected
char[3].spr_to = sprEyesMenuSelect
char[3].spr_from = sprEyesMenuDeselect
char[3].spr_slct = sprEyesMenu
char[3].num = 3
}
if UberCont.race_have[4] = 1
{
char[4] = instance_create(24,64,CampChar)
char[4].sprite_index = sprMeltingMenu
char[4].spr_menu = sprMeltingMenuSelected
char[4].spr_to = sprMeltingMenuSelect
char[4].spr_from = sprMeltingMenuDeselect
char[4].spr_slct = sprMeltingMenu
char[4].num = 4
}

if UberCont.race_have[9] = 1
{
char[9] = instance_create(124,32,CampChar)
char[9].sprite_index = sprChickenMenu
char[9].spr_menu = sprChickenMenuSelected
char[9].spr_to = sprChickenMenuSelect
char[9].spr_from = sprChickenMenuDeselect
char[9].spr_slct = sprChickenMenu
char[9].num = 9;
with char[9]
instance_create(x,y-24,TV)
}

if UberCont.race_have[24] = 1//Elementor
{
char[24] = instance_create(150,36,CampChar);
char[24].sprite_index = sprElementorMenuSelect
char[24].spr_menu = sprElementorMenuSelected
char[24].spr_to = sprElementorMenuSelect
char[24].spr_from = sprElementorMenuDeselect
char[24].spr_slct = sprElementorMenu
char[24].num = 24
with ElementorHead
	instance_destroy();
with instance_create(x,y,ElementorHeadMenu)
{
	myElementor = other.char[24];
}
//char[24].depth--;
}

if UberCont.race_have[20] = 1//BusinessHog
{
char[20] = instance_create(150,124,CampChar)
char[20].sprite_index = sprBusinessHogMenu
char[20].spr_menu = sprBusinessHogMenuSelected
char[20].spr_to = sprBusinessHogMenuSelect
char[20].spr_from = sprBusinessHogMenuDeselect
char[20].spr_slct = sprBusinessHogMenu
char[20].num = 20
}

if UberCont.race_have[17] = 1//GUNSMITH
{
char[17] = instance_create(96,106,CampChar)
char[17].sprite_index = sprWeaponSmithMenu
char[17].spr_menu = sprWeaponSmithMenuSelected
char[17].spr_to = sprWeaponSmithMenuSelect
char[17].spr_from = sprWeaponSmithMenuDeselect
char[17].spr_slct = sprWeaponSmithMenu
char[17].num = 17
}
if UberCont.race_have[27]
{
	//char[27] = instance_create(200,70,CampChar)
	char[27] = instance_create(180,35,CampChar);
	char[27].sprite_index = sprHandsMenu
	char[27].spr_menu = sprHandsMenuSelected
	char[27].spr_to = sprHandsMenuSelect
	char[27].spr_from = sprHandsMenuDeselect
	char[27].spr_slct = sprHandsMenu
	char[27].num = 27
}
if UberCont.race_have[28]//Thief
{
	char[28] = instance_create(30,42,CampChar)
	char[28].image_xscale = -1;
	char[28].sprite_index = sprThiefMenu
	char[28].spr_menu = sprThiefMenuSelected
	char[28].spr_to = sprThiefMenuSelectNoFlash;
	char[28].spr_from = sprThiefMenuDeselect
	char[28].spr_slct = sprThiefMenu
	char[28].num = 28
}
if UberCont.race_have[29]//No Thing
{
	char[29] = instance_create(150,90,CampChar)
	char[29].sprite_index = sprNoThingMenu
	char[29].spr_menu = sprNoThingMenuSelected
	char[29].spr_to = sprNoThingMenuSelect
	char[29].spr_from = sprNoThingMenuDeselect
	char[29].spr_slct = sprNoThingMenu
	char[29].num = 29
}


BackCont.viewx2 = Campfire.x-__view_get( e__VW.WView, 0 )/2
BackCont.viewy2 = Campfire.y-__view_get( e__VW.HView, 0 )/2
BackCont.viewx = Campfire.x-__view_get( e__VW.WView, 0 )/2
BackCont.viewy = Campfire.y-__view_get( e__VW.HView, 0 )/2

var dir;
dir = 5
repeat(racemax-4)
{
if UberCont.race_have[dir] = 1 && dir !=24 && dir !=20 && dir!=9 && dir !=17  && dir !=27 && dir != 28 && dir != 29
{
char[dir] = instance_create(64,48,CampChar)
char[dir].num = dir
switch(dir)
{
case 1:
char[1].sprite_index=sprMutant1Idle
break;
case 2:
char[2].sprite_index=sprMutant2Idle
break;
case 3:
char[3].sprite_index=sprMutant3Idle
break;
case 4:
char[4].sprite_index=sprMutant4Idle
break;
case 5:
char[5].sprite_index=sprMutant5Idle
break;
case 6:
char[6].sprite_index=sprMutant6Idle
break;
case 7:
char[7].sprite_index=sprMutant7Idle
break;
case 8:
char[8].sprite_index=sprMutant8Idle
break;
//case 9:
//char[9].sprite_index=sprMutant9Idle
//break;
case 10:
char[10].sprite_index=sprMutant10Idle
break;
case 11:
char[11].sprite_index=sprMutant11Idle
break;
case 12:
char[12].sprite_index=sprMutant12Idle
break;
case 13:
char[13].sprite_index=sprMutant13Idle
break;
case 14:
char[14].sprite_index=sprMutant14Idle
break;
case 15:
char[15].sprite_index=sprMutant15Idle
break;
case 16:
char[16].sprite_index=sprMutant16Idle
break;
//case 17:
//char[17].sprite_index=sprMutant17Idle
//break;
case 18:
char[18].sprite_index=sprMutant18Idle
//char[18].depth--;
break;
case 19:
char[19].sprite_index=sprMutant19Idle
break;
//case 20:
//char[20].sprite_index=sprBusinessHogMenu
//break;
case 21:
char[21].sprite_index=sprMutant21Idle
break;
case 22:
char[22].sprite_index=sprMutant22Idle
break;
case 23:
char[23].sprite_index=sprMutant23Idle
break;
//case 24:
//char[24].sprite_index=sprMutant24Idle
//break;
case 25:
char[25].sprite_index=sprMutant25Idle
break;
case 26:
char[26].sprite_index=sprMutant26Idle
break;
case 27:
char[27].sprite_index=sprMutant27Idle
break;
case 28:
char[28].sprite_index=sprMutant27Idle
break;
case 29:
char[29].sprite_index=sprMutant27Idle
break;
}
with char[dir]
{
	do {
		x = xstart
		y = ystart
		move_contact_solid(random(360),32+random(64)+random(64)*random(1))
		x = round(x) y = round(y)
	}
	until (!collision_ellipse(x-14,y-14,x+14,y+14,CampChar,1,1) &&
	!collision_ellipse(x-14,y-14,x+14,y+14,Wall,1,1))//12
}
}
dir += 1
}
if UberCont.race_have[5] = 1{
char[5].x = 0;
char[5].y = 0;
char[5].camX = 0;
char[5].sprite_index = sprPlantMenu
char[5].spr_menu = sprPlantMenuSelected
char[5].spr_to = sprPlantMenuSelect
char[5].spr_from = sprPlantMenuDeselect
char[5].spr_slct = sprPlantMenu}
if UberCont.race_have[6] = 1{
char[6].x = 16;
char[6].y = 96;
char[6].sprite_index = sprVenuzMenu
char[6].spr_menu = sprVenuzMenuSelected
char[6].spr_to = sprVenuzMenuSelect
char[6].spr_from = sprVenuzMenuDeselect
char[6].spr_slct = sprVenuzMenu}
if UberCont.race_have[7] = 1{
char[7].x = 96;
char[7].y = 32;
char[7].sprite_index = sprSteroidsMenu
char[7].spr_menu = sprSteroidsMenuSelected
char[7].spr_to = sprSteroidsMenuSelect
char[7].spr_from = sprSteroidsMenuDeselect
char[7].spr_slct = sprSteroidsMenu}
if UberCont.race_have[8] = 1{
char[8].x = 128;
char[8].y = 50;
char[8].image_xscale = -1;
char[8].sprite_index = sprRobotMenu
char[8].spr_menu = sprRobotMenuSelected
char[8].spr_to = sprRobotMenuSelect
char[8].spr_from = sprRobotMenuDeselect
char[8].spr_slct = sprRobotMenu}
/*if UberCont.race_have[9] = 1
{
char[9].sprite_index = sprChickenMenu
char[9].spr_menu = sprChickenMenuSelected
char[9].spr_to = sprChickenMenuSelect
char[9].spr_from = sprChickenMenuDeselect
char[9].spr_slct = sprChickenMenu
with char[9]
instance_create(x,y-32,TV)
}*/
if UberCont.race_have[10] = 1{
char[10].x = 20;
char[10].y = 40;

if UberCont.race_have[28]
{
	char[10].x = 9;
	char[10].y = 42;
}
char[10].camX = 0;
char[10].sprite_index = sprRebelMenu
char[10].spr_menu = sprRebelMenuSelected
char[10].spr_special = sprRebelMenuAwe
char[10].spr_to = sprRebelMenuSelect
char[10].spr_from = sprRebelMenuDeselect
char[10].spr_slct = sprRebelMenu}

if UberCont.race_have[11] = 1{//Hunter
char[11].x = -0;
char[11].y = 74;
char[11].camX = 0;
char[11].sprite_index = sprHunterMenu
char[11].spr_menu = sprHunterMenuSelected
char[11].spr_to = sprHunterMenuSelect//Select?
char[11].spr_from = sprHunterMenuDeselect//Deselect?
char[11].spr_slct = sprHunterMenu}

if UberCont.race_have[12] = 1{//Yung Cuz
char[12].x = 96;
char[12].y = 80;
char[12].sprite_index = sprYungCuzMenu
char[12].spr_menu = sprYungCuzMenuSelected
char[12].spr_to = sprYungCuzMenuSelect
char[12].spr_from = sprYungCuzMenuDeselect
char[12].spr_slct = sprYungCuzMenu}

if UberCont.race_have[13] = 1{//Sheep
char[13].x = 194;
char[13].y = 4;
char[13].sprite_index = sprSheepMenu
char[13].spr_menu = sprSheepMenuSelected
char[13].spr_to = sprSheepMenuDeselect
char[13].spr_from = sprSheepMenuSelect
char[13].spr_slct = sprSheepMenu}

if UberCont.race_have[14] = 1{//Panda
char[14].x = 32;
char[14].y = 82;
char[14].sprite_index = sprPandaMenu
char[14].spr_menu = sprPandaMenuSelected
char[14].spr_to = sprPandaMenuSelect
char[14].spr_from = sprPandaMenuDeselect
char[14].spr_slct = sprPandaMenu}

if UberCont.race_have[15] = 1{//Atom
char[15].x = 96;
char[15].y = 128;
char[15].sprite_index = sprAtomMenu
char[15].spr_menu = sprMutant15Idle
char[15].spr_to = sprAtomMenuSelect
char[15].spr_from = sprAtomMenuDeselect
char[15].spr_slct = sprAtomMenu}

if UberCont.race_have[16] = 1{//Viking
char[16].x = 58;
char[16].y = 130;
char[16].sprite_index = sprVikingMenu
char[16].spr_menu = sprVikingMenuSelected
char[16].spr_to = sprVikingMenuSelect
char[16].spr_from = sprVikingMenuDeselect
char[16].spr_slct = sprVikingMenu}

if UberCont.race_have[18] = 1{//ANGEL
char[18].x = 32;
char[18].y = 160;
char[18].sprite_index = sprAngelMenu
char[18].spr_menu = sprAngelMenuSelected
char[18].spr_to = sprAngelMenuSelect
char[18].spr_from = sprAngelMenuDeselect
char[18].spr_slct = sprAngelMenu}

if UberCont.race_have[19] = 1{//SKELETON
char[19].x = 64;
char[19].y = 155;
char[19].sprite_index = sprMutant19Sit
char[19].spr_menu = sprMutant19Idle
char[19].spr_to = sprMutant19StandUp
char[19].spr_from = sprMutant19GoSit
char[19].spr_slct = sprMutant19Sit
with char[19]
instance_create(x,y+2,SkeletonChair)}

if UberCont.race_have[21] = 1{//Horror
char[21].x = 100;
char[21].y = 150;
char[21].sprite_index = sprHorrorMenu
char[21].spr_menu = sprHorrorMenuSelected
char[21].spr_to = sprHorrorMenuSelect
char[21].spr_from = sprHorrorMenuDeselect
char[21].spr_slct = sprHorrorMenu}

if UberCont.race_have[22] = 1{//Rogue
char[22].x = 120;
char[22].y = 96;
char[22].sprite_index = sprRogueMenu
char[22].spr_menu = sprRogueMenuSelected
char[22].spr_to = sprRogueMenuSelect
char[22].spr_from = sprRogueMenuDeselect
char[22].spr_slct = sprRogueMenu}

if UberCont.race_have[23] = 1{//Frog
char[23].x = 166;
char[23].y = 55;
char[23].sprite_index = sprMutant23Sit
char[23].spr_menu = sprMutant23Idle
char[23].spr_to = sprFrogStandUp
char[23].spr_from = sprMutant23GoSit
char[23].spr_slct = sprMutant23Sit}

if UberCont.race_have[25] = 1{
//char[25].x = 180;
//char[25].y = 35;
char[25].x = 200;
char[25].y = 70;
char[25].sprite_index = sprMutationDoctorMenu
char[25].spr_menu = sprMutationDoctorMenuSelected
char[25].spr_to = sprMutationDoctorMenuSelect
char[25].spr_from = sprMutationDoctorMenuDeselect
char[25].spr_slct = sprMutationDoctorMenu
char[25].spr_special = sprMutationDoctorMenuGiveRad;
}

if UberCont.race_have[26] = 1{
char[26].x = 48;
char[26].y = 8;
char[26].camX = 16;
char[26].camY = 8;
char[26].image_speed = 0.3;//Humphry is a slow man
char[26].sprite_index = sprHumphryMenu
char[26].spr_menu = sprHumphryMenuSelected
char[26].spr_to = sprHumphryMenuSelect
char[26].spr_from = sprHumphryMenuDeselect
char[26].spr_slct = sprHumphryMenu}


logoin = 240
extra = 0




thanks = "#MOD REVIVAL#STARTED BY:#base4/spencers145#ADDITIONAL CODE:#base4/spencers145##QA GODDESS#AgentCucco##SFX AND ART#@larje100##ULTRA MUTATION ART:#@tilde_bee#Lynzkar#skurleton#Lunarshards##MORE ART#NotYourSagittarius##@ideaot/jasmine"
stxt2 = "####AWESOME MOD PEOPLE:##MOD REVIVAL#STARTED BY:##ADDITIONAL CODE:###QA GODDESS###SFX AND ART###ULTRA MUTATION ART:######MORE ART####FOLLOW ON TWITTER<3"
txt0 = "#NUCLEAR THRONE#A GAME BY VLAMBEER#MOD BY ERDEPPOL"
txt1 = "####DIRECTOR:#JAN WILLEM NIJMAN##PRODUCER:#RAMI ISMAIL##ART & ORIGINAL#CHARACTER DESIGN:#PAUL VEER##MUSIC:#JUKIO KALLIO##SOUND DESIGN:#JOONAS TURNER##PROMOTIONAL ART:#JUSTIN CHAN##VOICE OF MR. VENUZ:#DOSEONE###MODDED BY"
txt2 = "####AWESOME MOD PEOPLE:#"+string(thanks)
stxt0 = "#NUCLEAR THRONE"
stxt1 = "####DIRECTOR:###PRODUCER:###ART & ORIGINAL#CHARACTER DESIGN:###MUSIC:###SOUND DESIGN:###PROMOTIONAL ART:###VOICE OF MR. VENUZ:#####JUUL @Erdeppol"


img = 0

wave = 0
p = 0
scrGameModes();
updatepage=0;
openRemapper = false;
openSaveSlots = false;
saveSlotState = 0;
saveGameSlots = 3;
savedGames = scrLoadInAllGames();
selectedSaveSlot = 0;
camX = 0;
camY = 0;
camTargetX = 0;
camTargetY = 0;
camLerp = 1;

firstEntry = true;
portraitLerp = 0;
p = 0;
if UberCont.playFullyCompleted
{
	alarm[4] = 45;
}
//JOYPAD STUFF
/*
pick = 0
canmove = 1
joy_init()
joyaim = UberCont.opt_gamepad
if joyaim = 1
display_mouse_set(view_xview+16+22*pick,view_yview+view_hview-36+12)//optimise?
