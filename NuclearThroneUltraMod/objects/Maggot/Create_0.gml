raddrop = 1
maxhealth = 2
meleedamage = 1
size = 0



event_inherited()

spr_idle = sprMaggotIdle
spr_walk = sprMaggotIdle
spr_hurt = sprMaggotHurt
spr_dead = sprMaggotDead

//behavior
alarm[1] = 10+random(10)

charge = false;
loops = GetPlayerLoops();
