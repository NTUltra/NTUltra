raddrop = 8
maxhealth = 60;
mySize = 2

event_inherited();
meleedamage = 3

venomous = true;
spr_idle = sprCloudShooter
spr_walk = sprCloudShooter
spr_hurt = sprCloudShooterHurt
spr_dead = sprCloudShooterDead

snd_hurt = sndCloudShooterHurt
snd_dead = sndCloudShooterDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 34;
loops = GetPlayerLoops();
homingSpeed = 1.25;
homingTimeAdjustment = 10;
if loops < 1
{
	homingTimeAdjustment = 0;
	actTime = 36;
	homingSpeed = 1.2;
}
maxRange = 335;
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