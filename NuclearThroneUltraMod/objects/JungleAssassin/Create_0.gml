raddrop = 8
maxhealth = 12
meleedamage = 0
mySize = 1
//bloodempty=0;

event_inherited()

spr_idle = sprJungleAssassinIdle
spr_walk = sprJungleAssassinWalk
spr_hurt = sprJungleAssassinHurt
spr_dead = sprJungleAssassinDead


snd_hurt = sndJungleAssassinHurt
snd_dead = sndJungleAssassinDead


//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(30)
wepangle = choose(-140,140)
wepflip = 1
isInverted = false;
dodge=0;
range = 74;
tellTime = 12;
actTime = 4;
maxSpeed = 3;
loops = GetPlayerLoops();
if loops > 0
{
	actTime = 3;
	tellTime = 10;
}
canDodge = false;