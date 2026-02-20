raddrop = 20
maxhealth = 190
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 30;
scrBossHealthBuff();

meleedamage = 0
mySize = 1

event_inherited();
isBoss = true;
team = 3;
loop= loops > 0;
reachedHalfHealth = false;
actTime = 13;

if loops > 0
	actTime -= 2;
spr_idle = sprLilHunter
spr_walk = sprLilHunterWalk
spr_hurt = sprLilHunterHurt
spr_dead = sprLilHunterDead


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
alarm[6] = 30;
if instance_exists(SurvivalWave)
{
	alarm[2] = 5;
}

sndtaunt = 0
tauntdelay = 0
sndhalfhp = 0

dodgethis=noone;

shadowdraw=false;
shadowdrawx=x;
shadowdrawy=y;

scrAddDrops(3);
canDodge = false;