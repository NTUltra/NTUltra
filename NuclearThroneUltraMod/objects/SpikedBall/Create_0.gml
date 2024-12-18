event_inherited();
depth = 0;
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 3;
dist = 0
image_speed=0.2;
trailColour = make_colour_rgb(0,255,0);
alarm[2] = 120;
xprev = x;
yprev = y;
hitEntities = [];
if instance_exists(Player) && Player.skill_got[21] {
	dist = -10;	
}