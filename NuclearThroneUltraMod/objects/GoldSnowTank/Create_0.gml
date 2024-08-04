raddrop = 13
maxhealth = 70
meleedamage = 0
mySize = 2

event_inherited()

spr_idle = sprGoldenSnowTankIdle
spr_walk = sprGoldenSnowTankWalk
spr_hurt = sprGoldenSnowTankHurt
spr_dead = sprGoldenSnowTankDead

snd_hurt = sndGoldTankHurt
snd_dead = sndGoldTankDead

//behavior
alarm[1] = 30+random(10)
ammo = 0
gunangle = random(360)
rest = 0
wave = 0

isLoop = GetPlayerLoops() > 1
fireLaser = GetPlayerLoops() > 4
maxSpeed = 1.5;
isInverted = false;

if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;