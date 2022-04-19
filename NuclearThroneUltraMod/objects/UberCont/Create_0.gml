//VERSION STUFF ETC.
win8 = 1;
version = 000//23 is final probably
public = 0//1 is no cheats and release0
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
canDoChallenge = true;

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
	bladeGrenade,
	
	toxicSwarm,
	bloodExplosionExplosion,
	snowSwarm,
	morphFire
	
}
maxUltramod = 16;
ultramodSwap = true;
casualModeHPIncrease = 2;

hadBossIntro = false;
snd_wallbreak = sndWallBreak;

crownVaultChallenge = 0;
