maxhealth = 9999;
mySize = 1

spr_idle = sprThroneStatue
spr_hurt = sprThroneStatue
spr_dead = sprThroneStatueDead

event_inherited()
team = 1;
breakY = y - 16;
loops = min(10,GetPlayerLoops());