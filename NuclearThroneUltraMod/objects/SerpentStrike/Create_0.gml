event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

canBeMoved = false;
image_speed = 0;
image_yscale = 4;
target=enemy;
amountofenemies=0;
sprHead = sprSerpentStrikeHead;
sprOutline = sprSerpentStrikeOutline;
dmg = 3;
myHead = noone;
ammo = 180;
perFrame = 14;
currentFrameAmount = perFrame
alarm[1] = 1;
flipped = 1;
originalAngle = 0;