raddrop = 40
maxhealth = 86
meleedamage = 0
mySize = 3

loops = GetPlayerLoops();
maxhealth += clamp(18*loops,0,200);
scrBossHealthBuff();

event_inherited()

spr_idle = sprInvertedBanditBossIdle
spr_walk = sprInvertedBanditBossWalk
spr_hurt = sprInvertedBanditBossHurt
spr_dead = sprInvertedBanditBossDead
spr_fire = sprInvertedBanditBossFire


snd_hurt = sndBigBanditHit
snd_dead = sndBigBanditDie

//behavior
ammo = 10
walk = 0
shot = 0
chargewait = 2
charge = 0
gunangle = random(360)
alarm[1] = 14;
if loops > 0
	alarm[1] = 3;
intro = 0
wkick = 0

scrTarget()
if target != noone && instance_exists(target)
gunangle = point_direction(x,y,target.x,target.y)

sndhalfhp = 0
sndtaunt = 0
tauntdelay = 0

oasis=false;

cam=true

with InvertedBanditBoss
{
if id!=other.id
other.cam=false;
}

if cam
instance_create(x,y,DramaCamera);

if !scrIsGamemode(25)
	existTime = 60;
scrAddDrops(2);

if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1]+=45;
	scrGiveSnooze();
}
instance_create(x,y,WallBreak);