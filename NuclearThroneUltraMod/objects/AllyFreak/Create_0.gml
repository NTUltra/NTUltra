raddrop = 1
mySize = 1
target = -1
goForIt=false;


spr_idle = sprAllyFreakIdle
spr_walk = sprAllyFreakWalk
spr_hurt = sprFreak1Hurt
spr_dead = sprAllyFreakDead


snd_hurt = sndFreakHurt
snd_dead = sndFreakDead
snd_melee = sndFreakMelee

image_speed = 0.4
friction = 0.4
right = choose(1,-1)

team = 2;

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 2
//alarm[0] = 24/0.4//intro animation which is cool af
wkick = 0
depth = -1;
scrInitDrops(1);