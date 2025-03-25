/// @description Init
event_inherited();
image_speed = 0;
spr_intro = sprNoThingUnlockIntro;
spr_idle = sprNoThingUnlockIdle;
alarm[0] = 15;
depth = 3;
loops = GetPlayerLoops();
introSpiel = true;
openedShop = false;
closingWords = false;

time = 0;
timeScale = 0.1;
rotation = random_range(15,30) * choose(1,-1);
xScale = 1;
yScale = 1;
alarm[1] = 2;