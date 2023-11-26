event_inherited();
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 9;
dist = 0
image_speed=1;
alarm[0] = 1;
alarm[11] = 1;
if instance_exists(Player) && Player.skill_got[21] {
	dist = -10;	
}