raddrop = 1;
maxhealth = 1
mySize = 0



event_inherited()
meleedamage = 1
spr_idle = sprMaggotIdleInvert
spr_walk = sprMaggotIdleInvert
spr_hurt = sprMaggotHurtInvert
spr_dead = sprMaggotDeadInvert
//behavior
alarm[1] = 10+random(10)
charge = false;
loops = GetPlayerLoops();
maxSpeed = 2.5;
if loops > 0
	maxSpeed = 3;
sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;