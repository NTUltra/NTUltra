raddrop = 2
maxhealth = 5
meleedamage = 3
mySize = 1
droprate = 7;

event_inherited()

spr_idle = sprInvertedFreak1Idle
spr_walk = sprInvertedFreak1Walk
spr_hurt = sprInvertedFreak1Hurt
spr_dead = sprInvertedFreak1Dead


snd_hurt = sndFreakHurt
snd_dead = sndFreakDead
snd_melee = sndFreakMelee

//behavior
alarm[1] = 40+random(50)

walk = 0

