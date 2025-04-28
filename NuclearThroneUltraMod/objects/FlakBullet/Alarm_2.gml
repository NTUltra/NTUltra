/// @description Smoke
with instance_create(x,y,Smoke)
motion_add(random(360),random(2))
alarm[2] = 1 + irandom(2);