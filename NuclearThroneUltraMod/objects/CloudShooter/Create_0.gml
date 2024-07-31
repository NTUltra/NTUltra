raddrop = 14
maxhealth = 60
mySize = 1

event_inherited();
meleedamage = 3

venomous = true;
spr_idle = sprCloudShooter
spr_walk = sprCloudShooter
spr_hurt = sprCloudShooterHurt
spr_dead = sprCloudShooterDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 26;
loops = GetPlayerLoops();
if loops < 1
	actTime = 29;
maxRange = 350;
minRange = 96;
originRange = 100;
acc = 1;
maxSpeed = 2;
direction = random(360);
moveDirection = direction;
image_yscale = choose(1,-1);
right = 1;
scrAddDrops(1);
sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;