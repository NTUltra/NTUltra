friction = 0.45
image_speed = 0.4
totemBuffed = false;
MorphMe=false;
frozen=false;
maxSpeed = 16;
existTime = 30;
myConfusion = noone;

raddrop = 10
meleedamage = 0
humphrySkill = 0;

oldmox=UberCont.mouse__x;
oldmoy=UberCont.mouse__y;

hardshell=true;
p=0;
//scrRaces()
//scrSkills()
//scrUltras()
scrWeapons()
//scrCrowns()
if instance_exists(Player)
{
race=Player.race;
ultra_got = Player.ultra_got;
skill_got = Player.skill_got;
bettermelee=Player.bettermelee;
betterlaserbrain=Player.betterlaserbrain;
betterpluto=Player.betterpluto;
betterrabbitpaw=Player.betterrabbitpaw;
betterboltmarrow=Player.betterboltmarrow;

//sprites
spr_idle = Player.spr_idle
spr_walk = Player.spr_walk
spr_hurt = Player.spr_hurt
spr_dead = Player.spr_dead


//sounds
snd_hurt=Player.snd_hurt;
snd_dead=Player.snd_dead;
snd_wrld=Player.snd_wrld;

hurt_pitch_variation = 0;

wep = Player.wep
bwep = Player.bwep
cwep = Player.cwep
curse = 0
bcurse = 0
ccurse = 0;
reload = 0//Player.reload
breload = 0//Player.breload
team = 4//Player.team
mySize = 2;


accuracy = Player.accuracy


ammo[0] = Player.ammo[0]
ammo[1] = Player.ammo[1]
ammo[2] = Player.ammo[2]
ammo[3] = Player.ammo[3]
ammo[4] = Player.ammo[4]
ammo[5] = Player.ammo[5]

wepmod1 = Player.wepmod1;
wepmod2 = Player.wepmod2;
wepmod3 = Player.wepmod3;
wepmod4 = Player.wepmod4;

bwepmod1 = Player.bwepmod1;
bwepmod2 = Player.bwepmod2;
bwepmod3 = Player.bwepmod3;
bwepmod4 = Player.bwepmod4;

cwepmod1 = Player.cwepmod1;
cwepmod2 = Player.cwepmod2;
cwepmod3 = Player.cwepmod3;
cwepmod4 = Player.cwepmod4;


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

maxhealth = floor(6*1.5*Player.level);
if Player.skill_got[1]//rhino skin
maxhealth=floor(7*1.5*Player.level);
scrBossHealthBuff();

my_health = maxhealth
lsthealth = maxhealth//lasthealth

EnemyHealthAdjustments();

if Player.skill_got[14]{
skill_got[14] = 1}
else{
skill_got[14] = 0}//boiling veins

returntoplayer=0;
returntoplayerfast=0;
}
else
instance_destroy();

target=-1;
walk = 0
gunangle = random(360)
alarm[5] = 10+random(40)

instance_create(x,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x+16,y-16,WallBreak);
instance_create(x-16,y+16,WallBreak);
instance_create(x-16,y-16,WallBreak);

with instance_create(x,y,DramaCamera)
name="YOU?"
with Drama
name="YOU?"


//enemy
MorphMe=false;
frozen=false;
prevhealth=my_health;

queueshot = 0;
bqueueshot = 0;
cqueueshot = 0;