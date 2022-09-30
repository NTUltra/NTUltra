image_index = 0
//bloodempty=0

raddrop = 8
maxhealth = 12
meleedamage = 0
size = 1
target = -1

isInverted = false;
wkick=false;
spr_chrg=false;
spr_fire=false;

spr_idle = sprite_index
spr_hurt = sprJungleAssassinHurt
spr_dead = sprJungleAssassinDead
spr_walk = sprite_index

event_inherited()

image_speed = 0


//behavior
walk = 0
gunangle = random(360)
wepangle = choose(-140,140)
wepflip = 1
maxSpeed = 4.5;
tellTime = 4;
actTime = 1;
range = 80;
friction = 0.4
right = choose(1,-1)
my_health = maxhealth
prevhealth=my_health;

EnemyHealthAdjustments();



team = 1
target = -1

snd_hurt = sndJungleAssassinHurt
snd_dead = sndJungleAssassinDead

dodge=0;

MorphMe=false;
frozen=false;
countKill = true;
EnemyHealthAdjustments();