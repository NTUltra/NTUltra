event_inherited();
friction = 0.1
wallsdestroyed = 10;
if instance_exists(Player) && Player.skill_got[21]
	wallsdestroyed += 5;
dmg = 45;
trailColour = c_lime;