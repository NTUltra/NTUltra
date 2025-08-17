mySize = 2;
existTime = 0;
altFire = false;
canPuffyCheek = 0;
canPuffyCheekB = 0;
canPuffyCheekC = 0;
wepVisible = true;
depth = 1;
myConfusion = noone;
hurt_pitch_variation = 0;
maxSpeed = Player.maxSpeed;
altUltra = Player.altUltra;
isAlkaline=false;
hammerheadtimer=0;
hammerheadcounter=0;
skill_got = Player.skill_got;
wepmod1 = Player.wepmod1;
wepmod2 = Player.wepmod2;
wepmod3 = Player.wepmod3;
wepmod4 = Player.wepmod4;
nearWall = false;
armour = Player.armour;
maxarmour = Player.maxarmour;
scrWeapons()
dmg = 3;
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
team = Player.team
mySize = Player.mySize
queueshot = 0;
bqueueshot = 0;
cqueueshot = 0;
offset = 0;
isInvisible = false;

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

maxhealth = 8;

my_health = maxhealth
prevhealth = maxhealth//lasthealth

isAlkaline = false;
returntoplayer=0;
returntoplayerfast=0;
depth = Player.depth - 1;
theAim = 0;
myShield = -1;
image_angle = 0;

ultra_got = Player.ultra_got;
pSpeedBoost = Player.pSpeedBoost;
poppop = Player.poppop;
firedOnce = Player.firedOnce;
fired = Player.fired;
firedthislevel = Player.firedthislevel;
lastFiredWeapon = Player.lastFiredWeapon;

hitscanMode = false;