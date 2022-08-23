raddrop = 60
maxhealth = 120;
meleedamage = 1
size = 1
scrBossHealthBuff();


event_inherited()

loop=false;

if instance_exists(Player){
	if Player.loops>0
	loop=true;

}

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


sndtaunt = 0
tauntdelay = 0
sndhalfhp = 0

dodgethis=noone;

shadowdraw=false;
shadowdrawx=x;
shadowdrawy=y;

