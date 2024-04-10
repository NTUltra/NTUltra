raddrop = 14
maxhealth = 15
meleedamage = 2;
mySize = 1

event_inherited()
spr_gun = sprToxicMushroomGuyGun
spr_idle = sprToxicMushroomGuyIdle
spr_walk = sprToxicMushroomGuyWalk
spr_hurt = sprToxicMushroomGuyHurt
spr_dead = sprToxicMushroomGuyDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_melee = sndMaggotBite

//behavior
walk = 0
acc = 0.8
maxSpeed = 3;
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 18;
instance_create(x,y,WallBreak);

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;