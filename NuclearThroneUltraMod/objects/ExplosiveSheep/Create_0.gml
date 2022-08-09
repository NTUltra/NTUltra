raddrop = 1;
maxhealth = 4;
meleedamage = 0
size = 0
maxSpeed = 4;
hurt_pitch_variation = 0.25;
myConfusion = noone;
existTime = 0;
idle=true;
spr_idle = sprSheepIdleA
spr_walk = sprSheepWalk
spr_hurt = sprSheepHurt
spr_dead = sprSheepDead


image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth

EnemyHealthAdjustments();


team = 0
target = -1

snd_hurt = sndHitFlesh
snd_dead = sndSheepDead
snd_melee = sndMaggotBite


snd_hurt = sndBanditHit
snd_dead = sndSheepDead

//behavior
walk = 0
alarm[1] = 30+random(90)
wkick = 0

alarm[0]=6;//b4 dez
snd_play(sndSheep);

