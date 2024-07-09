raddrop = 12
maxhealth = 35
mySize = 1

event_inherited()
meleedamage = 1

venomous = true;
spr_idle = sprCloudKnifer
spr_walk = sprCloudKnifer
spr_hurt = sprCloudKniferHurt
spr_dead = sprCloudKniferDead
spr_dead_mid_air = sprCloudKniferDeadMidAir;
spr_chrg = sprCloudKniferShank;
spr_fire = spCloudKniferFire;

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 4.7;
stalking = (instance_number(CloudKnifer) % 2 == 0);
maxDistance = 300;
startingPointDistance = 250;
tx = x;
ty = y;
smackDetectionRange = 120;
smackRange = 9;
smackSpeed = 16;
loops = GetPlayerLoops();
wepangle = choose(-140,140);
sneakTell = 18;
knifeOffset = 52;
targetAlpha = 1;
stealthAlpha = 0.2;
deep = 12;
animationState = 0;
if instance_exists(ThroneIISpiral)
{
	deep = ThroneIISpiral.depth - 1;
}
if stalking
{
	targetAlpha = stealthAlpha;
	image_alpha = targetAlpha;
	mask_index = mskPickupThroughWall;
}
if loops > 0
{
	sneakTell -= 3;
	actTime -= 1;
}