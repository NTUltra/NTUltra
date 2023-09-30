//VERSION STUFF ETC.
version = 000//23 is final probably
encryptedVersion = 003;
public = 1 //1 is no cheats and release
defaultPublic = public;
updateVersion = "PR 30.06"//"PR 30.02";
subUpdateVersion = ".00";
//if file_exists("icheat.txt") or file_exists("ICHEAT.txt") or file_exists("ICHEAT.TXT") or file_exists("icheat.TXT")
//public = 0
/*
if public == 0
	show_debug_overlay(true);
*/
//DEBUG STUFF
scrn = 0
optY = 24;
everything=69;
unlocked=69;

//DEFAULT STUFF
race = 0
racepick = 0;
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
area=0;
subarea=1;
loops=0;
lastSaveLoop = -1;
loadedRun = false;

//window_set_max_height(1440);
//window_set_max_width(1920);
time_frame = 0;
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

todaysSeed = -1;
today = string(current_day) + "-" + string(current_month) + "-"+ string(current_year);
dailyDay = -1;
totalDailies = -1;
weeklyWeek = -1;
totalWeeklies = -1;
useSeed = false;
seed = 0;
seedText = "";
seedModeSeed = -1;
seedModeSeedText = "";

previous_gamemode = [0];
goToLeaderboard = false;
runScore = [];
runRace = [];
routeString = "";
previousRoute = 0;

leaderboardType = LEADERBOARD.SCORE;

firstFloorMaker = true;
seedOffset = 0;
wallsBroken = 0;
visitedScrap = false;
visitedOasis = false;
visitedSavanna = false;
scrInit();
window_set_min_width(640);
window_set_min_height(480);
window_set_position((display_get_width()*0.5)-640,display_get_height()*0.5 - 480);
window_set_fullscreen(opt_fulscrn)
if !opt_fulscrn
	window_set_size(640*2,480*2);
canRestart = true;
/*
	854 x 480
*/
enum ultramods {
	nothing,
	
	bulletShotgun,
	laserBullet,
	lightningKraken,
	krakenMelee,//toxicFire,
	
	shotgunElectro,
	plasmaBolt,
	plasmaRocket,
	bulletPlasma,
	
	
	rocketBolt,
	laserBolt,
	shotgunBolt,
	seekerMissile,
	
	boltBullet,
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
globalMutationsChosen = 0;

hadBossIntro = false;
snd_wallbreak = sndSilence;//sndWallBreak;



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
canMultiCrown = false;
canPickFrogCrown = true;
hasTakenCrownOfLife = false;
encrypted_run_data = {}

//Aim overwrite
mouse__x = mouse_x;
mouse__y = mouse_y;
vansSlapped = 0;

window_set_cursor(cr_none);

if !instance_exists(Cursor)
{
	instance_create(x,y,Cursor);	
}
canSpawnInversionShards = false;
collectedInversionShards = 0;
collectedInversionShardReward = false;
extraVan = 0;
killedInvertedThrone2 = false;
hasFoughtInvadingThrone = false;
recursionCheck = 0;
revivedCharacters = [];
beatTheGame = false;

randomDailyMod = 0;
chestRan = 10;
popoRan = 0;
isWeekly = false;
hasLeveledUp = false;

gmScroll = 0;
gmwidth = 1;
customSurvivalArena = [];
justQuit = false;
scrSaveCustomSurvivalArenaTemplate();

pauseimg = sprSharpStress;
pauseimgScale = 1;