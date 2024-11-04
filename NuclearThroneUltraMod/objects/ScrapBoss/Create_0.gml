raddrop = 85
maxhealth = 550//300
loops = GetPlayerLoops()
if loops > 0
	maxhealth = 700;
maxhealth += clamp(20*loops,0,200);
scrBossHealthBuff();
meleedamage = 0
mySize = 3

event_inherited()
existTime = 30;
meleedamage = 0;
isInverted = false;
spr_idle = sprScrapBossIdle
spr_walk = sprScrapBossWalk
spr_hurt = sprScrapBossHurt
spr_dead = sprScrapBossDead
spr_fire = sprScrapBossFire
spr_intro = sprScrapBossIntro;
spr_actual_idle = spr_idle;
spr_actual_hurt = spr_hurt;
spr_stop = sprScrapBossStop;
spr_charge = sprScrapBossCharge;

isHardMode = scrIsHardMode();
right = 1
scrTarget()
if target != noone && instance_exists(target)
gunangle = point_direction(x,y,target.x,target.y)
else
gunangle = 0

alarm[0] = 20
ammo = 15
turn = choose(1,-1)
walk = 0
if !instance_exists(NoDrama)
	instance_create(x,y,DramaCamera)

dir = random(360)
repeat(10)
{
with instance_create(x,y,Dust)
motion_add(other.dir,8)
dir += 36
}

with Wall
{
if place_meeting(x,y,other)
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}


snd_hurt = sndBigDogHit
snd_dead = sndBigDogDeath
sndhalfhp = 0
sndtaunt = 0
tauntdelay = 0

if instance_exists(Player)
{
with Raven
{
scrRavenLift()
}
with InvertedRaven
{
scrInvertedRavenLift()
}
}
acc = 0.5;
maxSpeed = 2;
maxSpinSpeed = 1;
actTime = 10;
loops = GetPlayerLoops();
missileType = ScrapBossMissile;
missileAmount = 2;
fireRate = 6;
turnSpeed = 4;
projectileSpeed = 2;
if loops > 0
{
	actTime = 9;
	missileAmount = 4;
}
if loops > 1
{
	projectileSpeed += 1;
	fireRate = 5;
	turnSpeed = 6;
	maxSpinSpeed += 0.2;
}
if instance_exists(Player) && Player.skill_got[29] {
	alarm[0] += 60;
	alarm[1] = alarm[0];
	alarm[0] = 0;
	scrGiveSnooze();
}