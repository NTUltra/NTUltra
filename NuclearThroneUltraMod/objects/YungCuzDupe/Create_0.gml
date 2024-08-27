event_inherited();
friction = 0.45
image_speed = 0.4
IsShielding = 0;
hurt_pitch_variation = 0;
maxSpeed = Player.maxSpeed;
alienIntestines = 0;
alienDir = 5;
isAlkaline=false;
metabolism = 0;
hammerheadtimer=0;
hammerheadcounter=0;
skill_got = Player.skill_got;
peaceBarrierTime = 0;
peaceBarrierDuration = 55;
peaceBarriers = 0;
peaceBarriersMax = 2;
if skill_got[26]//HAMMER HEAD
{
	hammerheadcounter = 20;
	if Player.race=25//Doctor but that doesn't really work right
	{
		hammerheadcounter += 5;
	}
}
if skill_got[44]
{
	snd_play(sndCrescentMoonAppear,0.01);
	with instance_create(x,y,CrescentMoon)
	{
		owner = other.id;
		minDeflect = maxDeflect - 1;
		deflectDurability = minDeflect;
		image_index = deflectDurability;
		alarm[3] = justRegenerated;
		alarm[2] = justRegenerated;
	}
	with instance_create(x,y,CrescentMoon)
	{
		owner = other.id;
		type = 1;
		minDeflect = maxDeflect - 1;
		deflectDurability = minDeflect;
		image_index = deflectDurability;
		alarm[3] = justRegenerated;
		alarm[2] = justRegenerated;
	}
}
wepmod1 = Player.wepmod1;
wepmod2 = Player.wepmod2;
wepmod3 = Player.wepmod3;
wepmod4 = Player.wepmod4;
altFire = true;
isPermanent = false;
isPermanentB = false;
isPermanentC = false;
visitedPortals = 0;
visitedPortalsB = 0;
visitedPortalsC = 0;
canPuffyCheek = 0;
canPuffyCheekB = 0;
canPuffyCheekC = 0;
hasBeenEaten = false;
hasBeenEatenB = false;
hasBeenEatenC = false;
nearWall = false;
//scrRaces()
//scrSkills()
//scrUltras()
scrWeapons()
//scrCrowns()

//extra feet items
extrafeetalarm = 0;
extrafeetdodged = false;

race=Player.race;

if Player.bskin=0
{
//sprites
spr_idle = sprCuzBuddyIdle
spr_walk = sprCuzBuddyWalk
spr_hurt = sprCuzBuddyHurt
spr_dead = sprCuzBuddyDead
}
else if Player.bskin=1
{
spr_idle = sprCuzBuddyIdleB
spr_walk = sprCuzBuddyWalkB
spr_hurt = sprCuzBuddyHurtB
spr_dead = sprCuzBuddyDeadB
}
else if Player.bskin=2
{
spr_idle = sprCuzBuddyIdleC
spr_walk = sprCuzBuddyWalkC
spr_hurt = sprCuzBuddyHurtC
spr_dead = sprCuzBuddyDeadC
}

//sounds
snd_hurt=sndYungCuzBuddyHurt;
snd_dead=sndYungCuzBuddyDead;
snd_wrld=sndYungCuzBuddyWrld;


wep = Player.wep
bwep = Player.bwep
curse = Player.curse
bcurse = Player.bcurse
ccurse = Player.ccurse;
reload = 0//Player.reload
breload = 0//Player.breload
loops = Player.loops;
team = Player.team
mySize = Player.mySize
queueshot = 0;
bqueueshot = 0;
cqueueshot = 0;


accuracy = Player.accuracy


ammo[0] = Player.ammo[0]
ammo[1] = Player.ammo[1]
ammo[2] = Player.ammo[2]
ammo[3] = Player.ammo[3]
ammo[4] = Player.ammo[4]
ammo[5] = Player.ammo[5]

bettermelee=0;
betterlaserbrain=0;


//default shit
clicked = 0
//if wep_type[wep] = 0 or wep = 24 or wep = 36
//wepangle = choose(120,-120)
//else 
wepangle = Player.wepangle
wepflip = Player.wepflip
angle = Player.angle
wkick = 0
bwkick = 0
bwepangle = Player.bwepangle
bwepflip = Player.bwepflip
//nochest = Player.nochest

//bleed = 0
//decay = 600
//crownrad = 0
//crownvisits = 0
raddrop=4;
rad = 0
can_shoot = 1
bcan_shoot = 1//Player.bcan_shoot
right = 1
wepright = 1
back = 1
wave = 0
//roll = 0
//drawempty = 0
//drawlowhp = 0
//canrebel = 1
triggerfinger=Player.triggerfinger;//0;
strongspirit=Player.strongspirit;//false
strongspiritused=Player.strongspiritused;//false

maxhealth = 6;
if skill_got[1]//rhino skin
maxhealth += 4;
if skill_got[31]//Tough shell
	maxhealth += 1;
if skill_got[33]//GLASS ARM CANNON
	maxhealth -= 2;

my_health = maxhealth
prevhealth = maxhealth//lasthealth


if skill_got[32]
	isAlkaline = true;
returntoplayer=0;
returntoplayerfast=0;

depth = Player.depth + 1;

myShield = -1;
image_angle = 0;
scrInitDrops(1);