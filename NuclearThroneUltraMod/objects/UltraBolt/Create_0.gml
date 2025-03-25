event_inherited();
friction = 0.1
wallsdestroyed = 10;
boltStick = UltraBoltStick;
if instance_exists(Player) && Player.skill_got[21]
	wallsdestroyed += 5;
dmg = 50;
trailColour = c_lime;