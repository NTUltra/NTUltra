raddrop = 30
maxhealth = 100
meleedamage = 0
mySize = 3
loops = GetPlayerLoops();
if scrIsHardMode()
	loops += 1;
maxhealth += clamp(20*loops,0,200);
scrBossHealthBuff();

event_inherited()
isBoss = true;

spr_idle = sprBanditBossIdle
spr_walk = sprBanditBossWalk
spr_hurt = sprBanditBossHurt
spr_dead = sprBanditBossDead
spr_fire = sprBanditBossFire


snd_hurt = sndBigBanditHit
snd_dead = sndBigBanditDie

//behavior
ammo = 10
walk = 0
shot = 0
chargewait = 2
charge = 0
gunangle = random(360)
alarm[1] = 20;
if loops > 0
	alarm[1] = 5;
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

with BanditBoss
{
if id!=other.id
other.cam=false;
}
if !scrIsGamemode(25)
	existTime = 60;

if cam
	alarm[7] = 5;

scrAddDrops(2);

if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1]+=45;
	scrGiveSnooze();
}
instance_create(x,y,WallBreak);