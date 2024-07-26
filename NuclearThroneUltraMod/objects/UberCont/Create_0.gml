//VERSION STUFF ETC.
version = 000//23 is final probably
encryptedVersion = 003;
public = 1 //1 is no cheats and release
defaultPublic = public;
updateVersion = "31.BETA"
subUpdateVersion = ".14";
notUpdated = "";
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
ultraMenuOpen = false;

jokeIntro = false;

//DEFAULT STUFF
race = 0
racepick = 0;
isPaused = 0
alarm[0] = 30
	//Init variable that we load
tot_time = 0;
opt_gamepad=0;//for interaction sprites
opt_ammoicon = true;


//this is for the menu
area=0;
subarea=1;
loops=0;
lastSaveLoop = -1;
hasBeenSaved = false;
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
finalTime = txttime;

lastwishused=false;
kills = 0;
hard = 0;

todaysSeed = -1;
gunGameSeed = todaysSeed;
useRaceActive = 1;
nextGunGameWep = 0;
nextGunGameWepB = 0;
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
setAimThisFrame = false;
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
	
	shotgunSplinterElectro,
	plasmaBolt,
	plasmaRocket,
	bulletPlasma,
	
	
	rocketBolt,
	laserBolt,
	shotgunBolt,
	fireFrost,
	
	boltBullet,
	toxicMorph,
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
globalMutationsChosen = 0;//Seeding
seedWeaponSmith = 0;

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
portalEssence = -1;
refundLivesRegain = [];
refundLastWishPrevent = false
refundSkeletonLives = 0
refundLastWish = false;
enableReroll = false;
crownHeal = false;
radUp = false;
maxHpIncrease = 0;
levelIncrease = 0;
voidChallengeGoing = [false,false,false,false,false,false];
voidChallengeCompleted = [false,false,false,false,false,false];
voidShopHealthUpgrade = false;
voidExtremeChallenges = false;
voidMutationDeposit = [];
voidWeaponDeposit = [];
savedSeed = 0;
canSave = false;
canMultiCrown = false;
canPickFrogCrown = true;
hasTakenCrownOfLife = false;
hasTakenCrownOfProtection = false;
loadedLoops = 0;
loadedKills = 0;
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
skillDeposit = [];
killedInvertedThrone2 = false;
hasFoughtInvadingThrone = false;
tookUnstoppable = false;
recursionCheck = 0;
revivedCharacters = [];
beatTheGame = false;

randomDailyMod = 0;
chestRan = 10;
popoRan = 0;
pandaRan = 20;
isLeaderboardGamemode = false;
viewDailyGamemode = false;
hasLeveledUp = false;
usedUltraMutationStart = false;
triedToGoHQThisLoop = false;

gmScroll = 0;
gmwidth = 1;
customSurvivalArena = [];
justQuit = false;
scrSaveCustomSurvivalArenaTemplate();

pauseimg = sprSharpStress;
pauseDark = pauseimg;
isPausedInTheDark = false;
pauseimgScale = 1;
confirmState = 0;
keepDeactive = ds_list_create();

duoPartner = [];
partnerTurn = 1;//Turn for the one to take a pause
partnerDied = false;
keepRanChar = 0;
highestReachedLevel = 0;
hadUnlockDisablePopup = false;
//current_run = total_run_slots;//Index
loadRunMenuState = 0;
selectedRun = 4;
loadedRunFiles = false;
savedRuns = [];