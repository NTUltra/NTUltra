raddrop = 14
maxhealth = 2
meleedamage = 2
mySize = 1
droprate = 60;


event_inherited()
spr_idle = sprInvertedExploFreakIdle
spr_walk = sprInvertedExploFreakWalk
spr_hurt = sprInvertedExploFreakHurt
spr_dead = sprInvertedExploFreakDead

snd_hurt = sndExploFreakHurt
snd_dead = sndExploFreakDead
snd_melee = sndExploFreakKillself

//behavior
alarm[1] = 50+random(30)
alarm[2] = 60;
if Player.skill_got[29]
	alarm[2] += 30;
ang=0;

walk = 0

