raddrop = 1;
maxhealth = 1
meleedamage = 1
size = 0



event_inherited()
spr_idle = sprMaggotIdleInvert
spr_walk = sprMaggotIdleInvert
spr_hurt = sprMaggotHurtInvert
spr_dead = sprMaggotDeadInvert
//behavior
alarm[1] = 10+random(10)

loops = GetPlayerLoops();
maxSpeed = 2.5;
if loops > 0
	maxSpeed = 3;