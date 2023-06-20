raddrop = 30
maxhealth = 100
meleedamage = 0
mySize = 3
var loops = GetPlayerLoops();
maxhealth += clamp(20*loops,0,200);
scrBossHealthBuff();

event_inherited()


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
alarm[1] = 1
intro = 0
wkick = 0

scrTarget()
if target != noone
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
if UberCont.opt_gamemode != 25
	existTime = 40;

if cam
instance_create(x,y,DramaCamera);

scrAddDrops(2);