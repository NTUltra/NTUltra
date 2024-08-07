raddrop = 5
maxhealth = 24//20
mySize = 1

event_inherited()
meleedamage = 2

spr_idle = sprSquareBatIdle
spr_walk = sprSquareBatIdle
spr_hurt = sprSquareBatHurt
spr_dead = sprSquareBatDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_melee = sndGoldScorpionMelee;

//behavior
walk = 0
alarm[1] = 30+random(90)
alarm[10] = 0;
actTime = 23;

circleMode = false;
circleDistance = 80;
angle = 0;
rotationSpeed = choose(2,-2);
projectileSpeed = 4;
projectileSpeedCircle = 3;
lp = 0.118;
maxSpeed = 4;
isInverted = false;
myBat = InvertedSquareBat;

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
	
loops = GetPlayerLoops();

if loops > 0
{
	actTime = 18;	
}