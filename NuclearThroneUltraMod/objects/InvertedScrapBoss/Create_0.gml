raddrop = 120
maxhealth = 290
loops = GetPlayerLoops()
if GetPlayerLoops() > 0
	maxhealth = 400;
maxhealth += clamp(20*loops,0,200);
scrBossHealthBuff();
meleedamage = 0
mySize = 3


event_inherited()


spr_idle = sprInvertedScrapBossIdle
spr_walk = sprInvertedScrapBossWalk
spr_hurt = sprInvertedScrapBossHurt
spr_dead = sprInvertedScrapBossDead
spr_fire = sprInvertedScrapBossFire


right = 1
scrTarget()
if target > -1 && instance_exists(target)
gunangle = point_direction(x,y,target.x,target.y)
else
gunangle = 0

alarm[0] = 30
ammo = 15
turn = choose(1,-1)
walk = 0

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
with InvertedRaven
{
scrInvertedRavenLift()
}
}

originalgunangle=gunangle;
