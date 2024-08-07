raddrop = 10
maxhealth = 4
meleedamage = 0
mySize = 1

if UberCont.loops>1
maxhealth=5;

event_inherited()

spr_idle = sprInvertedSniperIdle
spr_walk = sprInvertedSniperWalk
spr_hurt = sprInvertedSniperHurt
spr_dead = sprInvertedSniperDead



snd_hurt = sndSniperHit
alarm[0] = 1;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
gonnafire = 0
wkick = 0

sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;