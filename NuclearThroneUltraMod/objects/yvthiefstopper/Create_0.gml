raddrop = 0
maxhealth = 999999999999//YV IS A GOD!
my_health = maxhealth;
prevhealth = my_health;
morphMe=0;
frozen = noone
maxSpeed = 16;
target = noone
meleedamage = 0
mySize = 1
image_speed = 0.4
friction = 0.4

event_inherited()
EnemyHealthAdjustments();
hurt_pitch_variation = 0.05;
spr_idle = sprMutant6Idle
spr_walk = sprMutant6Walk
spr_hurt = sprMutant6Hurt
spr_dead = sprMutant6Dead

snd_hurt = sndMutant6Hurt
snd_dead = sndMutant6Dead

team = 5;
snd_play(sndMutant6Wrld);
//behavior
walk = 0
right = choose(1,-1)
gunangle = random(360)
alarm[1] = 55;
wkick = 0
actTime = 8;

wkick=false;
spr_chrg=false;
spr_fire=false;
existTime = 0;
depth -= 1;
myCorpse = -1;
totemBuffed = false;
myConfusion = noone;
hasSeen = 2;
aggroBuff = 0;
taunted = false;
//He be bangin
snd_play(mus103,0,true,true,2,false,false,0.8,true,id);