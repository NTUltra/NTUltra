raddrop = 8
maxhealth = 7
meleedamage = 0
mySize = 1
//bloodempty=0;
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 2;
event_inherited()
existTime = 0;
spr_idle = sprMeleeIdle
spr_walk = sprMeleeWalk
spr_hurt = sprMeleeHurt
spr_dead = sprMeleeDead

range = 72;

snd_hurt = sndAssassinHit
snd_dead = sndAssassinDie

canDodge = false;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(30)
wepangle = choose(-140,140)
wepflip = 1

maxSpeed = 2.5;
acc = 2;
dodgeAcc = 2;
dodgeRange = 60;
dodge=0;
tellTime = 16;
actTime = 6;
loops = GetPlayerLoops();
dodgeCooldown = 10;
dodgeTime = 3;
if loops > 0
{
	tellTime = 12;
	actTime = 4;
}