maxhealth = 99;
mySize = 1

spr_idle = sprThroneStatue
spr_hurt = sprThroneStatue
spr_dead = sprThroneStatueDead

event_inherited()
snd_hurt = sndStatueHurt
team = 1;
breakY = y - 16;
loops = min(5,1 + floor(GetPlayerLoops() * 0.5));
alarm[1] = 30 + irandom(30);