event_inherited();
raddrop = 1;
maxhealth = 1
meleedamage = 0
mySize = 1
maxSpeed = 4;
hurt_pitch_variation = 0.05;
myConfusion = noone;
existTime = 0;
countKill = false;

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


snd_hurt = sndSheep
snd_dead = sndSheepDead

//behavior
walk = 0
alarm[1] = 30+random(90)
wkick = 0
alarm[0] = 8;
snd_play(sndSheep,0.1,true);

scrInitDrops(5);