/// @description Init
alarm[1] = 1;
target = -1;
creator = -1;
lerpTime = 0;
lerpSpeed = 16;//Range of instant speed of hand
lerpCalc = 0.16;
lerpCalcBack = 0.16;
lerpDistance = 1;
dmg = 2;
image_speed = 0.4;
snd_play_2d(sndHandThrow);
snd_loop(sndHandThrowLoop);
team = 2;
touchpointX = x;
touchpointY = y;
push = false;
pushDirection = 0;
pushX = 0;
pushY = 0;
pushStartX = 0;
pushStartY = 0;
pushStrength = 108;
pushSpeed = 20;
grabbingPickup = false;
spr_closing = sprHandClosing;
spr_close = sprHandClose;
alarm[5] = 1;