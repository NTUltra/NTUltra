
//VERSION STUFF ETC.
win8 = 1;
version = 000//23 is final probably
public = 1//1 is no cheats and release
defaultPublic = public;
//if file_exists("icheat.txt") or file_exists("ICHEAT.txt") or file_exists("ICHEAT.TXT") or file_exists("icheat.TXT")
//public = 0
/*
if public == 0
	show_debug_overlay(true);
*/
//DEBUG STUFF
scrn = 0
scrn_take = 0

everything=69;
unlocked=69;

//DEFAULT STUFF
race = 0
isPaused = 0
alarm[0] = 30
	//Init variable that we load
tot_time = 0;
opt_gamepad=0;//for interaction sprites
opt_ammoicon = true;

with KeyCont
instance_destroy()
instance_create(x,y,KeyCont)

//this is for the menu
area=1;
subarea=1;
loops=0;
lastSaveLoop = -1;


//window_set_max_height(1440);
//window_set_max_width(1920);

time_microseconds=0;
microseconds=""//string for microseconds
time_seconds=0;
secondsstring="";
time_minutes=0;
minutesstring="";
time_hours=0;
txttime="00:00:00:00";

lastwishused=false;
kills = 0;
hard = 0;

var todaysSeedName = current_day+current_month+current_year;
var byteSeed = 0;
var byteSize = string_byte_length(todaysSeedName);
for (var i = 0; i < byteSize; i++) {
	byteSeed = (byteSeed + string_byte_at(todaysSeedName, i)) << 1;
}
todaysSeed = byteSeed;
today = string(current_day) + "-" + string(current_month) + "-"+ string(current_year);
useSeed = false;
seed = 0;
seedText = "";

firstFloorMaker = true;
seedOffset = 0;
wallsBroken = 0;

scrInit();
window_set_min_width(640);
window_set_min_height(480);
window_set_fullscreen(opt_fulscrn)
if !opt_fulscrn
	window_set_size(640*2,480*2);
canRestart = true;

enum ultramods {
	nothing,
	
	bulletShotgun,
	laserBullet,
	lightningKraken,
	toxicFire,
	
	shotgunElectro,
	plasmaBolt,
	plasmaRocket,
	bulletPlasma,
	
	
	rocketBolt,
	laserBolt,
	shotgunBolt,
	seekerMissile,
	
	splinterBullet,
	splinterElectro,
	bloodMelee,
	lightningPellet,
	
	toxicSwarm,
	bloodExplosionExplosion,
	snowSwarm,
	morphFire,
	
	bladeGrenade
}
maxUltramod = 16;
ultramodSwap = true;
casualModeHPIncrease = 2;

hadBossIntro = false;
snd_wallbreak = sndWallBreak;



crownVaultChallenge = 0;
enum secretChallengeBosses {
	bigVulture,
	bigFish,
	bushBox,
	chesireCat,
	bigAssassin,
	hyperCrystal
}
killedBoss = [];
collectedRewards = [];
enableReroll = false;
radUp = false;
maxHpIncrease = 0;
levelIncrease = 0;
savedSeed = 0;
canSave = false;
encrypted_run_data = {
	area: 100,
	subarea: 1,
	lastarea: 1,
	lastsubarea: 1,
	loops: 2,
	crown: 0,
	ammo: [0,555,50,50,50,50],
	maxammo: [0,555,50,50,50,50],
	skill_got: [],
	ultra_got: [],
	maxhp: 8,
	hp: 8,
	strongspirit: false,
	strongspiritused: false,
	alkaline: false,//isAlkaline
	lastwishused: false,
	rage: 0,
	humphryskill: 0,//HumphrySkill
	skeletonlives: 0,
	patience: 0,
	skillpoints: 0,
	level: 10,
	maxlevel: 10,
	ultramod: 0,
	skillsChosen: 0,
	wep: 1,
	bwep: 1,
	cwep: 0,
	curse: 0,
	bcurse: 0,
	ccurse: 0,
	wepmod1: 0,
	wepmod2: 0,
	wepmod3: 0,
	wepmod4: 0,
	bwepmod1: 0,
	bwepmod2: 0,
	bwepmod3: 0,
	bwepmod4: 0,
	cwepmod1: 0,
	cwepmod2: 0,
	cwepmod3: 0,
	cwepmod4: 0,
	gamemode: 0,
	killedBoss: [],
	collectedRewards: [],
	enableReroll: true,
	radUp: true,
	maxHpIncrease: 2,
	levelIncrease: 1,
	seed: 0,
	horrorEtaken: 0,
	hogpoints: 0,
	boostLevel: 0,
	time_microseconds: 0,
	time_seconds: 0,
	time_minutes: 0,
	time_hours: 0,
	race: 1,
	ultimategamble: false,
	bettermelee: 0,
	betterlaserbrain: 0,
	betterpluto: 0,
	betterrabbitpaw: 0.14,
	betterrecyclegland: 0.1,
	betterboltmarrow: 0,
	bskin: 0,
	accuracy: 1,
	kills: 0,
	invertedchance: 8,
	crownvisits: 0,
	hard: 0,
	maxspeed: 0,
	hammerheadcounter: 0,
	lag: -1,
	hardshell: true,
	visitedCrib: true,
	meltingd: 0,
	heavyheart: 0,
	freeArmourStrike: false,
	armour: -1,
	maxarmour: -1,
	crownVaultChallenge: 2,
	randomlySelected: false
};

//Aim overwrite
mouse__x = mouse_x;
mouse__y = mouse_y;

vansSlapped = 0;

window_set_cursor(cr_none);

if !instance_exists(Cursor)
{
	instance_create(x,y,Cursor);	
}
