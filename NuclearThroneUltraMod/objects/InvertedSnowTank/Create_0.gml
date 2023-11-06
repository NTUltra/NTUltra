raddrop = 14
maxhealth = 35//50
meleedamage = 0
mySize = 2

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
	if random(35) < 1 + min(24,Player.loops * 3) and (Player.subarea > 1 || Player.loops > 0)
	{
		replace=true;
		instance_destroy()
		instance_create(x,y,InvertedGoldSnowTank)
	}
}

isLoop = GetPlayerLoops() > 1
