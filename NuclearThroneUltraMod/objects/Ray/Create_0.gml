/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
event_inherited();
boosted = false;
team = 2;
typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
morphType = 1;
//0 normal 1 explosive 2 ultra 3 golden
canBeMoved = false;
canBeAngled = false;
isLaser = false;
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
x=Player.x+lengthdir_x(16,direction);
y=Player.y+lengthdir_y(16,direction);
hue=random(225);
hit[0] = noone;
hit[1] = x;
hit[2] = y;
range = 128;
range += (40*Player.skill_got[19]);
detectRange = 48;
detectRange += (16*Player.skill_got[19]);
lineWidth = 2;
bloomColour = make_color_rgb(255,50,255);
if Player.skill_got[17]
	lineWidth = 3;
alarm[0] = 2;
isGold = false;