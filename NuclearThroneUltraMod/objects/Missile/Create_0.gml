event_inherited();
friction=0.1;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable

target=noone;
dmg = 5;
alarm[0]=6
maxSpeed = 6;
if instance_exists(Player) && Player.skill_got[19]
	maxSpeed += 1;
//mask_index=mskPickupThroughWall;
alarm[1] = 1;
alarm[11] = 1;