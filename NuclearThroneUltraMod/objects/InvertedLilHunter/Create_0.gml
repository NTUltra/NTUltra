raddrop = 50
maxhealth = 175;
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 50;
meleedamage = 1
mySize = 1
scrBossHealthBuff();


event_inherited()
actTime = 9;
reachedHalfHealth = false;
team = 3;
loop = loops > 0;
if loop 
	actTime -= 2;
spr_idle = sprInvertedLilHunter
spr_walk = sprInvertedLilHunterWalk
spr_hurt = sprInvertedLilHunterHurt
spr_dead = sprInvertedLilHunterDead


snd_hurt = sndLilHunterHurt
snd_dead = sndLilHunterBreak

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 700//400//30+random(90)
wkick = 0
dodge = 0
z = 0
intro = 0

//FLY
alarm[2] = 250+random(100)//30
if instance_exists(SurvivalWave)
{
	alarm[2] = 5;
}
alarm[6] = 30;
sndtaunt = 0
tauntdelay = 0
sndhalfhp = 0

dodgethis=noone;

shadowdraw=false;
shadowdrawx=x;
shadowdrawy=y;

canDodge = false;
scrAddDrops(3);