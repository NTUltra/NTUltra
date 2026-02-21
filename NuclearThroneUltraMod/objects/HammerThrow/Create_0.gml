event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
norecycle=false;
loops = 0;
dmg = 2;
cost = 1;
radCost = 0;
xprev = xstart;
yprev = ystart;
canDealDamage = 1;
image_speed = 0;
time = 0;
timeIncrease = 0.05;
timeIncreaseIncrease = 0.025;
timeIncreaseMax = 0.2;
collisionX = x;
collisionY = y;
offsetX = x;
offsetY = y;
curveDirection = choose(120,-120);
curveAmount = 0.1 + random(0.75);
hammerShake = 1;
leftOverSpeed = 2;
shufleDamage = 0.5;
angleReturn = 0;