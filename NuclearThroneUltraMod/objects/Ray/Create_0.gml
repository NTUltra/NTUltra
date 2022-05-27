/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
event_inherited();
team = 2;
typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
explosive=1;
canBeMoved = false;
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
x=Player.x+lengthdir_x(16,direction);
y=Player.y+lengthdir_y(16,direction);
hue=random(225);
hit[0] = noone;
hit[1] = x;
hit[2] = y;
range = 100;
range += (60*Player.skill_got[19]);
detectRange = 48;
detectRange += (16*Player.skill_got[19]);
isUltra = false;
lineWidth = 2;
bloomColour = make_color_rgb(255,50,255);
if Player.skill_got[17]
	lineWidth = 3;
alarm[0] = 1;