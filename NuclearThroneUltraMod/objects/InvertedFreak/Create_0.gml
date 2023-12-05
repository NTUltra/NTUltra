raddrop = 2
maxhealth = 5
meleedamage = 3
mySize = 1
droprate = 5.5;

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

loops = GetPlayerLoops();
acc = 0.5;
maxSpeed = 4;
if loops > 0
{
	maxSpeed = 4.8;
	acc = 0.6;
}
fuseAmount = 0;
shadowY = 0;