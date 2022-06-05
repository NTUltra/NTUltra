raddrop = 10
maxhealth = 5
meleedamage = 0
size = 1
//bloodempty=0

if UberCont.loops>1
maxhealth=5;

event_inherited()

spr_idle = sprInvertedMeleeIdle
spr_walk = sprInvertedMeleeWalk
spr_hurt = sprInvertedMeleeHurt
spr_dead = sprInvertedMeleeDead



snd_hurt = sndAssassinHit
snd_dead = sndAssassinDie

snd_play(sndAssassinGetUp)

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 90+random(90)
wepangle = choose(-140,140)
wepflip = 1

dodge=0;

MorphMe=false;
frozen=false;
prevhealth=my_health;

