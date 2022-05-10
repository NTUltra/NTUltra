raddrop = 16
maxhealth = 35//50
meleedamage = 0
size = 2

if UberCont.loops>1
maxhealth=44;

event_inherited()

spr_idle = sprInvertedSnowTankIdle
spr_walk = sprInvertedSnowTankWalk
spr_hurt = sprInvertedSnowTankHurt
spr_dead = sprInvertedSnowTankDead

snd_hurt = sndSnowTankHurt
snd_dead = sndSnowTankPreExplo


//behavior
alarm[1] = 40+random(10)
ammo = 0
gunangle = random(360)
rest = 0
wave = 0
replace=false;
if instance_exists(Player)
{
if random(60) < 1 and Player.subarea > 1//random 30
{
replace=true;
instance_destroy()
instance_create(x,y,GoldSnowTank)
}
}

isLoop = GetPlayerLoops() > 0
