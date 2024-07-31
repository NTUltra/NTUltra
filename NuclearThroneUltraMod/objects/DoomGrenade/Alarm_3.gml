/// @description Blinking
instance_create(x,y,Smoke);
alarm[3] = blinkTime;
blinkTime = max(blinkTime - 1, 1);
blink = !blink;