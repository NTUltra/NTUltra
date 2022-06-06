raddrop = 12
maxhealth = 25
meleedamage = 0
size = 1

if UberCont.loops>1
maxhealth=29;

event_inherited()

spr_idle = sprInvertedCardGuy2Idle
spr_walk = sprInvertedCardGuy2Walk
spr_hurt = sprInvertedCardGuy2Hurt
spr_dead = sprInvertedCardGuy2Dead


//snd_hurt = sndBanditHit
//snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 40+random(90)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 60+random(60);
}
wkick = 0
gonnafire=0;

