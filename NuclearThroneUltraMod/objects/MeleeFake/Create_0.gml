image_index = 0
//bloodempty=0

raddrop = 12
maxhealth = 8
meleedamage = 1
mySize = 1
target = -1
ignoreOverlap = false;

wkick=false;
spr_chrg=false;
spr_fire=false;

spr_idle = sprite_index
spr_hurt = sprMeleeHurt
spr_dead = sprMeleeDead
spr_walk = sprite_index

event_inherited();
EnemyHealthAdjustments();
existTime = 0;
image_speed = 0

alarm[1] = 90 + irandom(60);
//behavior
walk = 0
gunangle = random(360)
wepangle = choose(-140,140)
wepflip = 1

friction = 0.4
right = choose(1,-1)
my_health = maxhealth
prevhealth=my_health;

EnemyHealthAdjustments();

team = 1
target = -1

snd_hurt = sndHitFlesh
snd_dead = sndEnemyDie

dodge=0;

wakeTime = 20;
wakeRange = 80;
wakeObject = MeleeBandit;
wakeSound = sndAssassinGetUp;

morphMe=0;
frozen=false;
countKill = true;
EnemyHealthAdjustments();
scrInitDrops(1);

if place_meeting(x,y,ProtoStatue)
	instance_destroy(id,false);