event_inherited();
friction = 0.1;
trailColour = c_lime;
dmg = 15//5 normal splinter
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
wallHits = -1;
if instance_exists(Player) && Player.skill_got[15]
	wallHits -= 1;
theGass = UltraToxicThrowerGas
alarm[11] = 1;