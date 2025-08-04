raddrop = 20
maxhealth = 60
mySize = 1
event_inherited();
sleeping = true;
prevHealth = my_health;
meleedamage = 3
venomous = true;
spr_idle = sprRadDiverIdle
spr_walk = sprRadDiverIdle
spr_hurt = sprRadDiverHurt
spr_dead = sprRadDiverDead;
spr_fire = sprRadDiverFire;

snd_hurt = sndRadDiverHurt
snd_dead = sndRadDiverDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 14;

acc = 0.6;
maxSpeed = 1.25;
projectileSpeed = 5;
amountOfProjectiles = 1;
loops = GetPlayerLoops();
maxAmountOfProjectiles = min(30,12 + loops);
damageMultiplier = 3;
isInverted = false;
toTarget = false;