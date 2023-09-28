
/*if instance_number(Player) > 1
{
instance_destroy()
exit;
}*/
//scrn=0; //for screenshot taking character explain pic
/*
if UberCont.normalGameSpeed == 60 && !instance_exists(FPSHACK) && !instance_exists(GenCont)
{
	instance_create(x,y,FPSHACK);
}*/
with GameRender
{
	gameovertime = 0;
	alarm[2] = 0;
}
with DataRef
	instance_destroy();
depth = 0;
myCorpse = noone;
previousUltra = -1;
hudArmourSpace = 0;
radPickedUp = 0;
maxRadPickedUp = 100;
saveLoaded = false;
outOfCombat = false;
guarenteedReroll = 1;
metabolism = 0;
restarted = false;
hurt_pitch_variation = 0;
reachedUltra = false;
canHeal = true;
noHit = 0;
fired = false;
closedodges = 0;
isPureHealthBoost = 0;
hunterEye = 0;
hunterEyeMax = 200;
sheepFakeouts = 0;
rewinds = 0;
alienIntestines = 0;
alienDir = 5;
charpoints = 0;
freeAmmoRound = 0;
hogWep[0] = 0;
hogWep[1] = 0;
hogWep[2] = 0;
hogWep[3] = 0;
hogWep[4] = 0;
hogWep[5] = 0;
hogWep[6] = 0;
hogWep[7] = 0;

hogWepmod1[0] = 0;
hogWepmod1[1] = 0;
hogWepmod1[2] = 0;
hogWepmod1[3] = 0;
hogWepmod1[4] = 0;
hogWepmod1[5] = 0;
hogWepmod1[6] = 0;
hogWepmod1[7] = 0;

hogWepmod2[0] = 0;
hogWepmod2[1] = 0;
hogWepmod2[2] = 0;
hogWepmod2[3] = 0;
hogWepmod2[4] = 0;
hogWepmod2[5] = 0;
hogWepmod2[6] = 0;
hogWepmod2[7] = 0;

hogWepmod3[0] = 0;
hogWepmod3[1] = 0;
hogWepmod3[2] = 0;
hogWepmod3[3] = 0;
hogWepmod3[4] = 0;
hogWepmod3[5] = 0;
hogWepmod3[6] = 0;
hogWepmod3[7] = 0;

hogWepmod4[0] = 0;
hogWepmod4[1] = 0;
hogWepmod4[2] = 0;
hogWepmod4[3] = 0;
hogWepmod4[4] = 0;
hogWepmod4[5] = 0;
hogWepmod4[6] = 0;
hogWepmod4[7] = 0;

hogCurse[0] = 0;
hogCurse[1] = 0;
hogCurse[2] = 0;
hogCurse[3] = 0;
hogCurse[4] = 0;
hogCurse[5] = 0;
hogCurse[6] = 0;
hogCurse[7] = 0;

hogIsPermanent[0] = false;
hogIsPermanent[1] = false;
hogIsPermanent[2] = false;
hogIsPermanent[3] = false;
hogIsPermanent[4] = false;
hogIsPermanent[5] = false;
hogIsPermanent[6] = false;
hogIsPermanent[7] = false;

//3D audio
audio_listener_orientation(0, 0, -1, 0, 1, 0);
audio_falloff_set_model(audio_falloff_linear_distance);
yungCuzCskin = 0;
randomlySelected = false;
ultraNow = false;
tookDestiny = false;
//show_message("hi")
//if joystick_exists(0) joy = 0 else joy = 0
meleeimmunity = 0;
usedHogInvestment = false;
hogpoints = 0; //INVESTMENT ULTRA amount of ultra mutations you get
horrorEtaken = false;
patience = 0;
patienceUsed = 0;
raddrop = 0;
hurtDuration = 13; //Additional iframes
hurtTime = 0;
lockoutElementor = false; //When no ammo lockout ability for elementor
mushroomhead = sprMutant24IdleHead;
boostLevel = 0;
level = 1
if instance_exists(BackCont)
BackCont.alarm[4] = 10;
canblacksword = false;
phoenixrevives = 0;
firedthislevel = false;
fired = false;
poppop = false;
rushcrownlevels = 0;
consecutiveCrownVisits = 0;
prevCrown = [];
portalstrikesusedthislevel = 0;
toxicweaponsfound = 0;

targetPickup = noone; //weapon pickup refrence

ultramod = ultramods.nothing;

//complicated fix for fantastic arcade
//joyaim = 0
p = 0

banditland = false;

strongspiritregained = 0;
lastWishPrevent = false;
blastArmourDelay = 0;
blastArmourPower = 3;

microseconds = 0;
seconds = 0;
movethislevel = false;
secretlevelcount = 0;
acceleration = 3;
flipDir = 1;
weaponspickedup = 0;
screenshake400 = true;
if UberCont.opt_shake != 4
	screenshake400 = false
with UberCont {
    if scrIsGamemode(17) //CHEATS
		public = 0
    //Daily
	if !instance_exists(PlayerSpawn) && instance_number(Player) == 1 && !instance_exists(CrownIcon)
	{
		if isWeekly {
			UberCont.opt_gamemode = [0];
			instance_create(0,0,StartDaily);
			// canRestart = false;
		}
	    else if scrIsGamemode(26) {
			instance_create(0,0,StartDaily);
        
	    }
	    else if scrIsGamemode(27) {
			instance_create(0,0,StartDaily);
	        canRestart = false;
	    }
	}
}

keyfire = 0

if instance_exists(GenCont)
race = GenCont.race
else if instance_exists(CrownIcon)
race = CrownIcon.race;
else if instance_exists(UltraIcon) {
    race = UltraIcon.race;
}
else if instance_exists(PlayerSpawn)
race = PlayerSpawn.race;
else if instance_exists(RaceCopier) {
    race = RaceCopier.race;
    with RaceCopier {
        instance_destroy();
    }
}
else
    race = 19;


if scrIsGamemode(7) //ATOM TELEPORT ONLY GM
race = 15;
if scrIsGamemode(35)
race = 23

fakeRace = race;

team = 2
mySize = 5

if instance_exists(GenCont)
	crown = GenCont.crown
else if instance_exists(CrownIcon)
	crown = CrownIcon.crown;
else if instance_exists(PlayerSpawn)
	crown = PlayerSpawn.crown;
else
    crown = [1];
currentCrowns = crown;
//AREA STUFF
area = 1
subarea = 0
lastarea = 1
lastsubarea = 1;
hard = 0

skillsChosen = 0; //To check for ultra mutation (always last)
totalSkills = 0;
skeletonlives = 0;
consecutiveGoodBloodGambles = 0;
livesRegain = [];

ultimategamble = false;

maxhealth = 8
bettermelee = 0;
betterlaserbrain = 0;
betterpluto = 39;
betterrabbitpaw = 0.0;
betterrecyclegland = 0;
betterboltmarrow = 0;

scrRaces()
bskin = UberCont.skin[race];
wep = 0;
bwep = 0;
cwep = 0;
scrSkills()
scrWeapons();
unlockAlternativeUltras = false;
altUltra = false;
loops = 0;
//RACE STUFF
scrLoadRace();
curse = 0
bcurse = 0
ccurse = 0
isPermanent = false;
isPermanentB = false;
isPermanentC = false;
//MODIFIERS!
wepmod1 = 0;
wepmod2 = 0;
wepmod3 = 0;
wepmod4 = 0;
//BMODIFIERS!
bwepmod1 = 0;
bwepmod2 = 0;
bwepmod3 = 0;
bwepmod4 = 0;
//CMODIFIERS!
cwepmod1 = 0;
cwepmod2 = 0;
cwepmod3 = 0;
cwepmod4 = 0;
ultra_got[109] = 0;//Initialize ultra array
scrCrowns()
scrUltras()

gunY = 0;
pSpeedBoost = 1;
if race == 11
	pSpeedBoost = 1.18;
if race == 7 && bskin == 2
{
	gunY = 4;
}
if race == 25
{
	//Better mutations
	maxRadPickedUp = 95;
}
if race == 14//Panda
{
	mask_index = mskPanda;	
}

if race == 24//Elementor
{
	with ElementorHead
		instance_destroy();
	instance_create(x,y,ElementorHead);
}

canSecondaryPop = true;

if scrIsGamemode(14) //fish companion only
{
	ultra_got[3] = 1;
	if !instance_exists(Partner)
		instance_create(x,y,Partner);
}
oneweponlywep = 0;
//WEAPON STUFF!
if scrIsGamemode(1) { //one weapon only game mode yo
    if UberCont.opt_gm1wep - 1 == 0 {
        wep = ceil(irandom(maxwep));
    }
    else {
        wep = UberCont.opt_gm1wep
    }
}
else {
	UberCont.start_wep[0]=race_swep[race];//Starting weapon 0 is different for each character
	if (UberCont.selected_start_wep[race] == -1)
	{
		do {wep = irandom(UberCont.maxstartwep);} until UberCont.start_wep_have[wep,race];
		wep = UberCont.start_wep[wep];
	}
    else {
		wep = UberCont.start_wep[UberCont.selected_start_wep[race]];
	}
}

oneweponlywep = wep;

if scrIsGamemode(13)
	wep = 239; //rocketglove

if scrIsGamemode(14) //fish companion only no wep
	wep = 0;
if scrIsGamemode(31)
{
	if wep != 0 && !scrMeleeWeapons(wep)
	{
		wep = 27//Default to screwdriver
	}
	if bwep != 0 && !scrMeleeWeapons(bwep)
	{
		bwep = 27//Default to screwdriver
	}
}
bwep = 0
cwep = 0 //roids specific
reload = 0
creload = 0
breload = 0
prevreload = 0;
prevbreload = 0;
prevcreload = 0;
prev60reload = 0;
prev60breload = 0;
prev60creload = 0;

queueshot = 0;
bqueueshot = 0;
cqueueshot = 0;

SetSeed();
if race = 17// && !instance_exists(StartDaily)//GunSmith random wepmod
{
    do {
        wepmod1 = scrMods();
    }
    until(wepmod1 != 14) //radiation mod

}


accuracy = 1

if race = 22
RogueHeat = true;
else
    RogueHeat = false;


rogueammo = 1;
rogueammomax = 3;
toxicamount = 0;
maxtoxicamount = 120;
toxicConsume = 0;

ammo[0] = 999
ammo[1] = 0
ammo[2] = 0
ammo[3] = 0
ammo[4] = 0
ammo[5] = 0
if (race == 26) {
    ammo[1] = typ_ammo[1];
    ammo[2] = typ_ammo[2];
    ammo[3] = typ_ammo[3];
    ammo[4] = typ_ammo[4];
    ammo[5] = typ_ammo[5];
    ammo[wep_type[wep]] = typ_ammo[wep_type[wep]] * 3
} else if UberCont.lastwishused = true {
    ammo[1] = typ_ammo[1] * 3
    ammo[2] = typ_ammo[2] * 3
    ammo[3] = typ_ammo[3] * 3
    ammo[4] = typ_ammo[4] * 3
    ammo[5] = typ_ammo[5] * 3
}
else {
    ammo[wep_type[wep]] = typ_ammo[wep_type[wep]] * 3
}

if scrIsGamemode(9)
{
	maxhealth += UberCont.casualModeHPIncrease;
}
maxSpeed = 4


maxlevel = 10 + UberCont.levelIncrease;
if scrIsGamemode(15) //no mutaitons gamemode
maxlevel = 1;
skillsChosen = 0
skillpoints = 0;
crownpoints = 0

kills = 0

if scrIsGamemode(30)//Ultra mutation start
{
	skillsChosen = 10;
	skillpoints = 1;
}
else if scrIsGamemode(31)//Melee only
{
	skill_got[13] = 1;
	totalSkills ++;
}
if scrIsGamemode(32)//One hit wonder
{
	if array_length(UberCont.collectedRewards) > 0
	{
		skillpoints ++;
	}
	if array_length(UberCont.collectedRewards) > 5
	{
		ultraNow = true;
		skillpoints ++;
	}
}
if scrIsHardMode()//HARD MODE
{
	skillpoints ++;
	skillsChosen --;
	if !instance_exists(PlayerSpawn)
	{
		hard = 3;
		instance_create(x,y,HardModeChest);
	}
	maxRadPickedUp += 40;
	//Also in startDaily
}
inverted = false; //for when entering inverted portals
invertedportalcounter = 0;
invertedportaldelay = 10;
invertedchance = 8;
if race == 27
	invertedchance = 20;


oasis = false;
oasisskip = -1;

swapChar = false;
crownvisits = 0
reincarnate = false;
if scrIsGamemode(21) { //loop start
    hard = 18
    loops = 1;
}
var r = UberCont.racepick;
if r == 0
	r = race
if scrIsGamemode(36)//Ultra mod start
{
	area = 100;
    hard -= 1;
    crownvisits = -1;
	//instance_create(0,0,PauseTimer);
}
if UberCont.crown_start[r] && !instance_exists(PlayerSpawn) && !scrIsGamemode(25) && !instance_exists(CrownIcon){
	with Crown
		instance_destroy();
	with UberCont
		alarm[2] = 0;
	crownpoints = 1;
}

if scrIsGamemode(25) {
    area = 116;
}




IsShielding = 0;
if race = 2 {
    //snd_hurt = sndHitRock no more need for this
    maxhealth = 10
}

if race = 4 //melting
maxhealth = 2

if race == 19 //skeleton
{
    maxhealth = 4;
    maxSpeed = 3.6
    accuracy = 1.2
}
if race == 26 || race == 16//Good O'l Humphry & Viking
{
	maxhealth = 6;
}

if race = 5 //Plant
	maxSpeed = 4.5

if race = 7 //roids secondary weapon
{
    if scrIsGamemode(1) { //one weapon only game mode yo
        if UberCont.opt_gm1wep - 1 == 0
			bwep = irandom(maxwep);
        else
            bwep = UberCont.opt_gm1wep
    }
    else {
        bwep = wep
    } //start with another golden weapon instead of a revolver

    if scrIsGamemode(13)
		bwep = 239; //rocketglove

    accuracy = 1.8
}
if race = 11//HUNTER
{
	accuracy = 0.8;	
}
standartAccuracy = accuracy;



my_health = maxhealth
lsthealth = maxhealth //lasthealth
maxCash = 500;
cash = maxCash;
lstCash = maxCash;
inDebt = false;
prevhealth = maxhealth //health previous step

//default shit
clicked = 0

wepflip = 1
angle = 0
wkick = 0
bwkick = 0
cwkick = 0
wepangle = 0;
bwepangle = 0
cwepangle = 0
bwepflip = 1
cwepflip = 1
nochest = -1

bleed = 0
decay = 600
crownrad = 0

rad = 0

can_shoot = 1
bcan_shoot = 0
ccan_shoot = 0
right = 1
wepright = 1
back = 1
wave = 0
roll = 0
rollIframe = 0;
drawempty = 0
drawlowhp = 0
canrebel = 1
triggerfinger = 0;
strongspirit = false;
strongspiritused = false;
hammerheadtimer = 0;
hammerheadcounter = 0;
nearWall = false;
lag = -1;
hardshell = true;

visitedCrib = false;
fromCribToVault = false;
meltingd = 0;
lastEnemyKilled = noone;
rage = 0;
exception = false;
sharpteeth = 0; //stress embedded
crackshotsfired = 0; //hunter ultra d
ogmx = 0;//Original mouse pos
ogmy = 0;

//horror
horrorcharge = 2;
origincharge = 2;
maxcharge = 20;
horrorhealtime = 0;
horrordelay = false;

//extra feet items
extrafeetalarm = 0;
extrafeetdodged = false;

//lava
hotfloor = 0;

//freezing
getFrozen = 0;
frozen = 0;

//angel flying
flying = 0;
flyduration = 0;
flymax = 50;



moddelay = 0;

rnglevelloop = 0;

heavyheart = 0;

humphrySkill = 0;

freeArmourStrike = false;
if race = 16 {
    armour = 2;
    maxarmour = 2;
}
else {
    armour = -1;
    maxarmour = -1;
}

//sheep
sheepPower = 0;
sheepPowerToHaveEffect = 3.7;
justAsheep = false;
if race = 13 {
    justAsheep = true;
}

RadMony = false;
if race == 6 || race == 20 {
    if random(100) < 1
    RadMony = true; //this will be a small chance
}
SetSeed();
friction = 0.45
image_speed = 0.4
// I AM A CHEATER ammo[5] = 99 wep = 19


if scrIsGamemode(5) //1HP gamemode
{
    my_health = 1;
    maxhealth = my_health
}

if scrIsGamemode(11) //GUN GAME
{
    do {
        wep = irandom(maxwep);
    }
    until(wep != 69 && wep != 0 && wep != 298 && wep_rad[wep] <= 0) //no oops gun and no no gun

    if race = 7 //roids
    {
        do {
            bwep = irandom(maxwep);
        }
        until(bwep != 69 && bwep != 0 && wep != 298) //no oops gun and no no gun
    }

    if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]] * 3 {
        ammo[wep_type[wep]] += typ_ammo[wep_type[wep]] * 3;
    }

}

if scrIsGamemode(8) { //VAN FAN
    area = 117;
	if race != 13 // Sheep gets no fanpusher
	{
		wep = 373;//The vanpusher
		if race == 7
			bwep = wep;
		ammo[wep_type[wep]] = typ_ammo[wep_type[wep]] * 3
	}
}

looping = false; //you are now looping
//invertedchance=100;

if wep = 1 || wep = 39 || wep = 56
onlyusemerevolver = true;
else
    onlyusemerevolver = false;
onlyusemegold = false;
if scrCheckGold(wep_name[wep])
	onlyusemegold = true;
isAlkaline = true;
myShield = -1;
canAnimateDuringImmune = -1;
if scrIsGamemode(25) && !instance_exists(SurvivalWave)
{
	instance_create(x,y,SurvivalWave);	
}
cheatyinfiniteammo = false;
unkillable = false;
maxhealth += UberCont.maxHpIncrease;
my_health = maxhealth;
scrWeaponHold();
if wep == bwep
	scrSwapWeps();


//TEST HAVE ALL MUTS FROG GOD
if scrIsGamemode(35)
{
	var i = 0
	repeat(maxskill+1)
	{skill_got[i] = 1
		totalSkills++;
	i += 1}
	i = 0
	repeat(maxultra+2)
	{
		//if i != 81//SUPER BLAST ARMOUR STALKER
		//{
		if i != 26
			ultra_got[i] = 1
			
		i += 1
		//}
	}
}
enum LEADERBOARD {
	SCORE,
	RACE,
	WEEKLY,
	VANFAN,
};
scrInitDrops(0);
altFire = false;
normalFire = false;