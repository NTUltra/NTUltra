event_inherited();
/*friction = 0.1
alarm[1] = 6
alarm[0] = 60*/

image_speed = 0.4
friction = 0.4
image_xscale = choose(1,-1)
alarm[5] = 1;
offx = random(2)-1
offy = random(2)-1

typ = 0; 

spr_walk=sprDoomBotWalk;
spr_idle=sprDoomBotIdle;


target = -1

team = 2

walk = 5

alarm[1] = 2+random(10)
alarm[4] = 20;
alarm[0]=120+random(120);
blinkTime += 1;
alarm[3] = alarm[0] - 40;
dmg = 7;
blink = false;